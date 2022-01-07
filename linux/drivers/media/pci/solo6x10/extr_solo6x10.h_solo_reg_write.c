
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct solo_dev {int pdev; scalar_t__ reg_base; } ;


 int PCI_STATUS ;
 int pci_read_config_word (int ,int ,int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void solo_reg_write(struct solo_dev *solo_dev, int reg,
      u32 data)
{
 u16 val;

 writel(data, solo_dev->reg_base + reg);
 pci_read_config_word(solo_dev->pdev, PCI_STATUS, &val);
}
