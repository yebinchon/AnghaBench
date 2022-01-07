
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cb710_chip {int platform_id; int slot_refs_count; } ;


 int BUG_ON (int) ;
 int CB710_SLOT_MMC ;
 int CB710_SLOT_MS ;
 int CB710_SLOT_SM ;
 scalar_t__ atomic_read (int *) ;
 int cb710_ida ;
 int cb710_unregister_slot (struct cb710_chip*,int ) ;
 int ida_free (int *,int ) ;
 struct cb710_chip* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void cb710_remove_one(struct pci_dev *pdev)
{
 struct cb710_chip *chip = pci_get_drvdata(pdev);

 cb710_unregister_slot(chip, CB710_SLOT_SM);
 cb710_unregister_slot(chip, CB710_SLOT_MS);
 cb710_unregister_slot(chip, CB710_SLOT_MMC);




 ida_free(&cb710_ida, chip->platform_id);
}
