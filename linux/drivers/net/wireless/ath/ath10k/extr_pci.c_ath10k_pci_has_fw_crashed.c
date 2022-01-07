
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int FW_INDICATOR_ADDRESS ;
 int FW_IND_EVENT_PENDING ;
 int ath10k_pci_read32 (struct ath10k*,int ) ;

__attribute__((used)) static bool ath10k_pci_has_fw_crashed(struct ath10k *ar)
{
 return ath10k_pci_read32(ar, FW_INDICATOR_ADDRESS) &
        FW_IND_EVENT_PENDING;
}
