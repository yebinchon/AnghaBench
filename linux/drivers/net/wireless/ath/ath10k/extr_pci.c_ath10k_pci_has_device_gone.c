
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int FW_INDICATOR_ADDRESS ;
 int ath10k_pci_read32 (struct ath10k*,int ) ;

__attribute__((used)) static bool ath10k_pci_has_device_gone(struct ath10k *ar)
{
 u32 val;

 val = ath10k_pci_read32(ar, FW_INDICATOR_ADDRESS);
 return (val == 0xffffffff);
}
