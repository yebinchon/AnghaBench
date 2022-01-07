
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath10k {int dummy; } ;


 scalar_t__ RTC_SOC_BASE_ADDRESS ;
 int ath10k_pci_write32 (struct ath10k*,scalar_t__,scalar_t__) ;

void ath10k_pci_soc_write32(struct ath10k *ar, u32 addr, u32 val)
{
 ath10k_pci_write32(ar, RTC_SOC_BASE_ADDRESS + addr, val);
}
