
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilo_hwinfo {int * mmio_vaddr; } ;


 size_t DB_IRQ ;
 int ioread8 (int *) ;
 int iowrite8 (int,int *) ;

__attribute__((used)) static inline void ilo_disable_interrupts(struct ilo_hwinfo *hw)
{
 iowrite8(ioread8(&hw->mmio_vaddr[DB_IRQ]) & ~1,
   &hw->mmio_vaddr[DB_IRQ]);
}
