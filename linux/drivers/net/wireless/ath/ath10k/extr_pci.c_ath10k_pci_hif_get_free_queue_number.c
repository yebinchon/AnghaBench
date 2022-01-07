
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ath10k_pci {TYPE_1__* pipe_info; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int ce_hdl; } ;


 int ATH10K_DBG_PCI ;
 int ath10k_ce_num_free_src_entries (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;

u16 ath10k_pci_hif_get_free_queue_number(struct ath10k *ar, u8 pipe)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 ath10k_dbg(ar, ATH10K_DBG_PCI, "pci hif get free queue number\n");

 return ath10k_ce_num_free_src_entries(ar_pci->pipe_info[pipe].ce_hdl);
}
