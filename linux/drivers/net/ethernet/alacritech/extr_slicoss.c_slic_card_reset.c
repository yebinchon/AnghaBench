
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct slic_device {int pdev; } ;


 int PCI_COMMAND ;
 int SLIC_REG_RESET ;
 int SLIC_RESET_MAGIC ;
 int mdelay (int) ;
 int pci_read_config_word (int ,int ,int *) ;
 int slic_write (struct slic_device*,int ,int ) ;

__attribute__((used)) static void slic_card_reset(struct slic_device *sdev)
{
 u16 cmd;

 slic_write(sdev, SLIC_REG_RESET, SLIC_RESET_MAGIC);

 pci_read_config_word(sdev->pdev, PCI_COMMAND, &cmd);
 mdelay(1);
}
