
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int SOC_RESET_CONTROL_ADDRESS ;
 int SOC_RESET_CONTROL_SI0_RST_MASK ;
 int ath10k_pci_soc_read32 (struct ath10k*,int ) ;
 int ath10k_pci_soc_write32 (struct ath10k*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void ath10k_pci_warm_reset_si0(struct ath10k *ar)
{
 u32 val;

 val = ath10k_pci_soc_read32(ar, SOC_RESET_CONTROL_ADDRESS);
 ath10k_pci_soc_write32(ar, SOC_RESET_CONTROL_ADDRESS,
          val | SOC_RESET_CONTROL_SI0_RST_MASK);
 val = ath10k_pci_soc_read32(ar, SOC_RESET_CONTROL_ADDRESS);

 msleep(10);

 val = ath10k_pci_soc_read32(ar, SOC_RESET_CONTROL_ADDRESS);
 ath10k_pci_soc_write32(ar, SOC_RESET_CONTROL_ADDRESS,
          val & ~SOC_RESET_CONTROL_SI0_RST_MASK);
 val = ath10k_pci_soc_read32(ar, SOC_RESET_CONTROL_ADDRESS);

 msleep(10);
}
