
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int pci_win_rd_data; int pci_win_rd_addr_lo; int pci_win_rd_addr_hi; } ;
struct octeon_device {scalar_t__ chip_id; int pci_win_lock; TYPE_1__ reg_list; } ;


 scalar_t__ OCTEON_CN23XX_PF_VID ;
 scalar_t__ OCTEON_CN66XX ;
 scalar_t__ OCTEON_CN68XX ;
 int readl (int ) ;
 int readq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

u64 lio_pci_readq(struct octeon_device *oct, u64 addr)
{
 u64 val64;
 unsigned long flags;
 u32 val32, addrhi;

 spin_lock_irqsave(&oct->pci_win_lock, flags);




 addrhi = (addr >> 32);
 if ((oct->chip_id == OCTEON_CN66XX) ||
     (oct->chip_id == OCTEON_CN68XX) ||
     (oct->chip_id == OCTEON_CN23XX_PF_VID))
  addrhi |= 0x00060000;
 writel(addrhi, oct->reg_list.pci_win_rd_addr_hi);


 val32 = readl(oct->reg_list.pci_win_rd_addr_hi);

 writel(addr & 0xffffffff, oct->reg_list.pci_win_rd_addr_lo);
 val32 = readl(oct->reg_list.pci_win_rd_addr_lo);

 val64 = readq(oct->reg_list.pci_win_rd_data);

 spin_unlock_irqrestore(&oct->pci_win_lock, flags);

 return val64;
}
