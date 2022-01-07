
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k_wmi {int mgmt_max_num_pending_tx; int mgmt_pending_tx; } ;
struct ath10k_mgmt_tx_pkt_addr {int paddr; struct sk_buff* vaddr; } ;
struct ath10k {int data_lock; struct ath10k_wmi wmi; } ;
typedef int dma_addr_t ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int idr_alloc (int *,struct ath10k_mgmt_tx_pkt_addr*,int ,int ,int ) ;
 struct ath10k_mgmt_tx_pkt_addr* kmalloc (int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
ath10k_wmi_mgmt_tx_alloc_msdu_id(struct ath10k *ar, struct sk_buff *skb,
     dma_addr_t paddr)
{
 struct ath10k_wmi *wmi = &ar->wmi;
 struct ath10k_mgmt_tx_pkt_addr *pkt_addr;
 int ret;

 pkt_addr = kmalloc(sizeof(*pkt_addr), GFP_ATOMIC);
 if (!pkt_addr)
  return -ENOMEM;

 pkt_addr->vaddr = skb;
 pkt_addr->paddr = paddr;

 spin_lock_bh(&ar->data_lock);
 ret = idr_alloc(&wmi->mgmt_pending_tx, pkt_addr, 0,
   wmi->mgmt_max_num_pending_tx, GFP_ATOMIC);
 spin_unlock_bh(&ar->data_lock);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi mgmt tx alloc msdu_id ret %d\n", ret);
 return ret;
}
