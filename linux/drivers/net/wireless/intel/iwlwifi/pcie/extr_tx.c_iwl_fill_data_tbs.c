
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_txq {int dummy; } ;
struct iwl_trans {int dev; } ;
struct iwl_cmd_meta {int tbs; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int BIT (int) ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int dma_map_single (int ,scalar_t__,scalar_t__,int ) ;
 int dma_mapping_error (int ,int ) ;
 int iwl_pcie_txq_build_tfd (struct iwl_trans*,struct iwl_txq*,int ,scalar_t__,int) ;
 scalar_t__ skb_frag_address (int const*) ;
 int skb_frag_dma_map (int ,int const*,int ,scalar_t__,int ) ;
 scalar_t__ skb_frag_size (int const*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int trace_iwlwifi_dev_tx_tb (int ,struct sk_buff*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int iwl_fill_data_tbs(struct iwl_trans *trans, struct sk_buff *skb,
        struct iwl_txq *txq, u8 hdr_len,
        struct iwl_cmd_meta *out_meta)
{
 u16 head_tb_len;
 int i;





 head_tb_len = skb_headlen(skb) - hdr_len;

 if (head_tb_len > 0) {
  dma_addr_t tb_phys = dma_map_single(trans->dev,
          skb->data + hdr_len,
          head_tb_len, DMA_TO_DEVICE);
  if (unlikely(dma_mapping_error(trans->dev, tb_phys)))
   return -EINVAL;
  trace_iwlwifi_dev_tx_tb(trans->dev, skb,
     skb->data + hdr_len,
     head_tb_len);
  iwl_pcie_txq_build_tfd(trans, txq, tb_phys, head_tb_len, 0);
 }


 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  dma_addr_t tb_phys;
  int tb_idx;

  if (!skb_frag_size(frag))
   continue;

  tb_phys = skb_frag_dma_map(trans->dev, frag, 0,
        skb_frag_size(frag), DMA_TO_DEVICE);

  if (unlikely(dma_mapping_error(trans->dev, tb_phys)))
   return -EINVAL;
  trace_iwlwifi_dev_tx_tb(trans->dev, skb,
     skb_frag_address(frag),
     skb_frag_size(frag));
  tb_idx = iwl_pcie_txq_build_tfd(trans, txq, tb_phys,
      skb_frag_size(frag), 0);
  if (tb_idx < 0)
   return tb_idx;

  out_meta->tbs |= BIT(tb_idx);
 }

 return 0;
}
