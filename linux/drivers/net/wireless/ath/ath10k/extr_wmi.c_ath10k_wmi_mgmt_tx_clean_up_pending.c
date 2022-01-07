
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct ath10k_mgmt_tx_pkt_addr {int paddr; struct sk_buff* vaddr; } ;
struct ath10k {int hw; int dev; } ;


 int ATH10K_DBG_WMI ;
 int DMA_FROM_DEVICE ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;

__attribute__((used)) static int ath10k_wmi_mgmt_tx_clean_up_pending(int msdu_id, void *ptr,
            void *ctx)
{
 struct ath10k_mgmt_tx_pkt_addr *pkt_addr = ptr;
 struct ath10k *ar = ctx;
 struct sk_buff *msdu;

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "force cleanup mgmt msdu_id %hu\n", msdu_id);

 msdu = pkt_addr->vaddr;
 dma_unmap_single(ar->dev, pkt_addr->paddr,
    msdu->len, DMA_FROM_DEVICE);
 ieee80211_free_txskb(ar->hw, msdu);

 return 0;
}
