
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int FW_INDICATOR_ADDRESS ;
 int FW_IND_EVENT_PENDING ;
 int ath10k_pci_read32 (struct ath10k*,int ) ;
 int ath10k_pci_write32 (struct ath10k*,int ,int ) ;

__attribute__((used)) static void ath10k_pci_fw_crashed_clear(struct ath10k *ar)
{
 u32 val;

 val = ath10k_pci_read32(ar, FW_INDICATOR_ADDRESS);
 val &= ~FW_IND_EVENT_PENDING;
 ath10k_pci_write32(ar, FW_INDICATOR_ADDRESS, val);
}
