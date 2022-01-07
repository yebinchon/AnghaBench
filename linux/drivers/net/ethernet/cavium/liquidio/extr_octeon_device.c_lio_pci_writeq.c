
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int pci_win_wr_data_lo; int pci_win_wr_data_hi; int pci_win_wr_addr; } ;
struct octeon_device {int pci_win_lock; TYPE_1__ reg_list; } ;


 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;
 int writeq (int,int ) ;

void lio_pci_writeq(struct octeon_device *oct,
      u64 val,
      u64 addr)
{
 u32 val32;
 unsigned long flags;

 spin_lock_irqsave(&oct->pci_win_lock, flags);

 writeq(addr, oct->reg_list.pci_win_wr_addr);


 writel(val >> 32, oct->reg_list.pci_win_wr_data_hi);

 val32 = readl(oct->reg_list.pci_win_wr_data_hi);

 writel(val & 0xffffffff, oct->reg_list.pci_win_wr_data_lo);

 spin_unlock_irqrestore(&oct->pci_win_lock, flags);
}
