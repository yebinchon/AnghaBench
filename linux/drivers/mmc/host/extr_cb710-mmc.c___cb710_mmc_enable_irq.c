
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_slot {int dummy; } ;


 unsigned short CB710_MMC_IE_IRQ_ENABLE ;
 int CB710_MMC_IRQ_ENABLE_PORT ;
 unsigned short cb710_read_port_16 (struct cb710_slot*,int ) ;
 int cb710_write_port_16 (struct cb710_slot*,int ,unsigned short) ;

__attribute__((used)) static void __cb710_mmc_enable_irq(struct cb710_slot *slot,
 unsigned short enable, unsigned short mask)
{


 mask |= CB710_MMC_IE_IRQ_ENABLE;






 enable = (cb710_read_port_16(slot, CB710_MMC_IRQ_ENABLE_PORT)
  & ~mask) | enable;

 if (enable)
  enable |= CB710_MMC_IE_IRQ_ENABLE;

 cb710_write_port_16(slot, CB710_MMC_IRQ_ENABLE_PORT, enable);
}
