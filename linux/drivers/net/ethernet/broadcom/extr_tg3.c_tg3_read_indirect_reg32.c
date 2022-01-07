
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int indirect_lock; int pdev; } ;


 int TG3PCI_REG_BASE_ADDR ;
 int TG3PCI_REG_DATA ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 tg3_read_indirect_reg32(struct tg3 *tp, u32 off)
{
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&tp->indirect_lock, flags);
 pci_write_config_dword(tp->pdev, TG3PCI_REG_BASE_ADDR, off);
 pci_read_config_dword(tp->pdev, TG3PCI_REG_DATA, &val);
 spin_unlock_irqrestore(&tp->indirect_lock, flags);
 return val;
}
