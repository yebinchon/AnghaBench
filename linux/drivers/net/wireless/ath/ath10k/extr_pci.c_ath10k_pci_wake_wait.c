
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ETIMEDOUT ;
 int PCIE_WAKE_LATE_US ;
 int PCIE_WAKE_TIMEOUT ;
 scalar_t__ ath10k_pci_is_awake (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int udelay (int) ;

__attribute__((used)) static int ath10k_pci_wake_wait(struct ath10k *ar)
{
 int tot_delay = 0;
 int curr_delay = 5;

 while (tot_delay < PCIE_WAKE_TIMEOUT) {
  if (ath10k_pci_is_awake(ar)) {
   if (tot_delay > PCIE_WAKE_LATE_US)
    ath10k_warn(ar, "device wakeup took %d ms which is unusually long, otherwise it works normally.\n",
         tot_delay / 1000);
   return 0;
  }

  udelay(curr_delay);
  tot_delay += curr_delay;

  if (curr_delay < 50)
   curr_delay += 5;
 }

 return -ETIMEDOUT;
}
