
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; int data; } ;
struct device {int dummy; } ;
struct be_wrb_params {int dummy; } ;
struct be_tx_obj {int dummy; } ;
struct TYPE_5__ {int dma_map_errors; } ;
struct be_adapter {TYPE_2__ drv_stats; TYPE_1__* pdev; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_6__ {int nr_frags; int * frags; } ;
struct TYPE_4__ {struct device dev; } ;


 int DMA_TO_DEVICE ;
 int be_tx_get_wrb_hdr (struct be_tx_obj*) ;
 int be_tx_setup_wrb_frag (struct be_tx_obj*,int ,int) ;
 int be_tx_setup_wrb_hdr (struct be_adapter*,struct be_tx_obj*,struct be_wrb_params*,struct sk_buff*,int) ;
 int be_tx_stats_update (struct be_tx_obj*,struct sk_buff*) ;
 int be_xmit_restore (struct be_adapter*,struct be_tx_obj*,int,int,int) ;
 int dma_map_single (struct device*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int skb_frag_dma_map (struct device*,int const*,int ,int,int ) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int skb_wrb_cnt (struct sk_buff*) ;

__attribute__((used)) static u32 be_xmit_enqueue(struct be_adapter *adapter, struct be_tx_obj *txo,
      struct sk_buff *skb,
      struct be_wrb_params *wrb_params)
{
 u32 i, copied = 0, wrb_cnt = skb_wrb_cnt(skb);
 struct device *dev = &adapter->pdev->dev;
 bool map_single = 0;
 u32 head;
 dma_addr_t busaddr;
 int len;

 head = be_tx_get_wrb_hdr(txo);

 if (skb->len > skb->data_len) {
  len = skb_headlen(skb);

  busaddr = dma_map_single(dev, skb->data, len, DMA_TO_DEVICE);
  if (dma_mapping_error(dev, busaddr))
   goto dma_err;
  map_single = 1;
  be_tx_setup_wrb_frag(txo, busaddr, len);
  copied += len;
 }

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  len = skb_frag_size(frag);

  busaddr = skb_frag_dma_map(dev, frag, 0, len, DMA_TO_DEVICE);
  if (dma_mapping_error(dev, busaddr))
   goto dma_err;
  be_tx_setup_wrb_frag(txo, busaddr, len);
  copied += len;
 }

 be_tx_setup_wrb_hdr(adapter, txo, wrb_params, skb, head);

 be_tx_stats_update(txo, skb);
 return wrb_cnt;

dma_err:
 adapter->drv_stats.dma_map_errors++;
 be_xmit_restore(adapter, txo, head, map_single, copied);
 return 0;
}
