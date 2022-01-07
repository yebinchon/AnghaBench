
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath10k_pci_supp_chip {scalar_t__ dev_id; scalar_t__ rev_id; } ;


 int ARRAY_SIZE (struct ath10k_pci_supp_chip*) ;
 scalar_t__ MS (scalar_t__,int ) ;
 int SOC_CHIP_ID_REV ;
 struct ath10k_pci_supp_chip* ath10k_pci_supp_chips ;

__attribute__((used)) static bool ath10k_pci_chip_is_supported(u32 dev_id, u32 chip_id)
{
 const struct ath10k_pci_supp_chip *supp_chip;
 int i;
 u32 rev_id = MS(chip_id, SOC_CHIP_ID_REV);

 for (i = 0; i < ARRAY_SIZE(ath10k_pci_supp_chips); i++) {
  supp_chip = &ath10k_pci_supp_chips[i];

  if (supp_chip->dev_id == dev_id &&
      supp_chip->rev_id == rev_id)
   return 1;
 }

 return 0;
}
