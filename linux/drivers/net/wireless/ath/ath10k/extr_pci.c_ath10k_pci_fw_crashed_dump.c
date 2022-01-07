
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int dump_work; } ;
struct ath10k {int workqueue; } ;


 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void ath10k_pci_fw_crashed_dump(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 queue_work(ar->workqueue, &ar_pci->dump_work);
}
