
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int EIO ;
 scalar_t__ FW_RAM_CONFIG_ADDRESS ;
 scalar_t__ SOC_CORE_BASE_ADDRESS ;
 int ath10k_pci_read32 (struct ath10k*,scalar_t__) ;
 int ath10k_pci_write32 (struct ath10k*,scalar_t__,int ) ;
 int ath10k_warn (struct ath10k*,char*,int ,int ) ;

__attribute__((used)) static int ath10k_pci_set_ram_config(struct ath10k *ar, u32 config)
{
 u32 val;

 ath10k_pci_write32(ar, SOC_CORE_BASE_ADDRESS +
      FW_RAM_CONFIG_ADDRESS, config);

 val = ath10k_pci_read32(ar, SOC_CORE_BASE_ADDRESS +
    FW_RAM_CONFIG_ADDRESS);
 if (val != config) {
  ath10k_warn(ar, "failed to set RAM config from 0x%x to 0x%x\n",
       val, config);
  return -EIO;
 }

 return 0;
}
