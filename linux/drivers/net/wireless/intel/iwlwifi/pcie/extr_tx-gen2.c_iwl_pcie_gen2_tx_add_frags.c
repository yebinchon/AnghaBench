
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_trans {int dev; } ;
struct iwl_tfh_tfd {int dummy; } ;
struct iwl_cmd_meta {int tbs; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int BIT (int) ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int dma_mapping_error (int ,int ) ;
 int iwl_pcie_gen2_set_tb (struct iwl_trans*,struct iwl_tfh_tfd*,int ,int ) ;
 int skb_frag_address (int const*) ;
 int skb_frag_dma_map (int ,int const*,int ,int ,int ) ;
 int skb_frag_size (int const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int trace_iwlwifi_dev_tx_tb (int ,struct sk_buff*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int iwl_pcie_gen2_tx_add_frags(struct iwl_trans *trans,
          struct sk_buff *skb,
          struct iwl_tfh_tfd *tfd,
          struct iwl_cmd_meta *out_meta)
{
 int i;

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  dma_addr_t tb_phys;
  int tb_idx;

  if (!skb_frag_size(frag))
   continue;

  tb_phys = skb_frag_dma_map(trans->dev, frag, 0,
        skb_frag_size(frag), DMA_TO_DEVICE);

  if (unlikely(dma_mapping_error(trans->dev, tb_phys)))
   return -ENOMEM;
  tb_idx = iwl_pcie_gen2_set_tb(trans, tfd, tb_phys,
           skb_frag_size(frag));
  trace_iwlwifi_dev_tx_tb(trans->dev, skb,
     skb_frag_address(frag),
     skb_frag_size(frag));
  if (tb_idx < 0)
   return tb_idx;

  out_meta->tbs |= BIT(tb_idx);
 }

 return 0;
}
