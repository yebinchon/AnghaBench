
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union wil_tx_desc {int dummy; } wil_tx_desc ;
typedef size_t uint ;
struct wil_tx_enhanced_desc {int dummy; } ;
struct wil_ring {TYPE_4__* ctx; TYPE_2__* va; } ;
struct TYPE_7__ {int (* tx_desc_map ) (union wil_tx_desc*,int ,int,int) ;} ;
struct wil6210_priv {TYPE_3__ txrx_ops; struct wil_ring* ring_tx; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_8__ {int skb; int mapped_as; } ;
struct TYPE_5__ {int enhanced; } ;
struct TYPE_6__ {TYPE_1__ tx; } ;


 int DMA_TO_DEVICE ;
 int DUMP_PREFIX_NONE ;
 int EINVAL ;
 int dma_map_single (struct device*,void*,int,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int skb_frag_dma_map (struct device*,int *,int ,int,int ) ;
 int skb_get (struct sk_buff*) ;
 int stub1 (union wil_tx_desc*,int ,int,int) ;
 scalar_t__ unlikely (int ) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_hex_dump_txrx (char*,int ,int,int,void const*,int,int) ;
 int wil_mapped_as_page ;
 int wil_mapped_as_single ;
 struct device* wil_to_dev (struct wil6210_priv*) ;
 int wil_tso_type_lst ;
 int wil_tx_desc_offload_setup_tso_edma (struct wil_tx_enhanced_desc*,int,int,int,int,int) ;

__attribute__((used)) static int wil_tx_tso_gen_desc(struct wil6210_priv *wil, void *buff_addr,
          int len, uint i, int tso_desc_type,
          skb_frag_t *frag, struct wil_ring *ring,
          struct sk_buff *skb, bool is_ipv4,
          int tcp_hdr_len, int skb_net_hdr_len,
          int mss, int *descs_used)
{
 struct device *dev = wil_to_dev(wil);
 struct wil_tx_enhanced_desc *_desc = (struct wil_tx_enhanced_desc *)
  &ring->va[i].tx.enhanced;
 struct wil_tx_enhanced_desc desc_mem, *d = &desc_mem;
 int ring_index = ring - wil->ring_tx;
 dma_addr_t pa;

 if (len == 0)
  return 0;

 if (!frag) {
  pa = dma_map_single(dev, buff_addr, len, DMA_TO_DEVICE);
  ring->ctx[i].mapped_as = wil_mapped_as_single;
 } else {
  pa = skb_frag_dma_map(dev, frag, 0, len, DMA_TO_DEVICE);
  ring->ctx[i].mapped_as = wil_mapped_as_page;
 }
 if (unlikely(dma_mapping_error(dev, pa))) {
  wil_err(wil, "TSO: Skb DMA map error\n");
  return -EINVAL;
 }

 wil->txrx_ops.tx_desc_map((union wil_tx_desc *)d, pa,
       len, ring_index);
 wil_tx_desc_offload_setup_tso_edma(d, tso_desc_type, is_ipv4,
        tcp_hdr_len,
        skb_net_hdr_len, mss);





 if (tso_desc_type == wil_tso_type_lst)
  ring->ctx[i].skb = skb_get(skb);

 wil_hex_dump_txrx("TxD ", DUMP_PREFIX_NONE, 32, 4,
     (const void *)d, sizeof(*d), 0);

 *_desc = *d;
 (*descs_used)++;

 return 0;
}
