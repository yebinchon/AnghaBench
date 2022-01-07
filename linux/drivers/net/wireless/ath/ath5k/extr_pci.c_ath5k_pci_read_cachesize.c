
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ath_common {scalar_t__ priv; } ;
struct ath5k_hw {int pdev; } ;


 int L1_CACHE_BYTES ;
 int PCI_CACHE_LINE_SIZE ;
 int pci_read_config_byte (int ,int ,scalar_t__*) ;

__attribute__((used)) static void ath5k_pci_read_cachesize(struct ath_common *common, int *csz)
{
 struct ath5k_hw *ah = (struct ath5k_hw *) common->priv;
 u8 u8tmp;

 pci_read_config_byte(ah->pdev, PCI_CACHE_LINE_SIZE, &u8tmp);
 *csz = (int)u8tmp;







 if (*csz == 0)
  *csz = L1_CACHE_BYTES >> 2;
}
