
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;


 int EEPROM_FILENAME_LEN ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*) ;
 int dev_name (struct device*) ;
 char* devm_kzalloc (struct device*,int ,int ) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static const char *owl_get_eeprom_name(struct pci_dev *pdev)
{
 struct device *dev = &pdev->dev;
 char *eeprom_name;

 dev_dbg(dev, "using auto-generated eeprom filename\n");

 eeprom_name = devm_kzalloc(dev, EEPROM_FILENAME_LEN, GFP_KERNEL);
 if (!eeprom_name)
  return ((void*)0);


 scnprintf(eeprom_name, EEPROM_FILENAME_LEN, "ath9k-eeprom-pci-%s.bin",
    dev_name(dev));

 return eeprom_name;
}
