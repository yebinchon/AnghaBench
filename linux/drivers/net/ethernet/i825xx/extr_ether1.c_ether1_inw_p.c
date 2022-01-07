
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ ETHER1_RAM ;
 int REG_PAGE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned short readw (scalar_t__) ;
 int writeb (int,int ) ;

__attribute__((used)) static inline unsigned short
ether1_inw_p (struct net_device *dev, int addr, int svflgs)
{
 unsigned long flags;
 unsigned short ret;

 if (svflgs)
  local_irq_save (flags);

 writeb(addr >> 12, REG_PAGE);
 ret = readw(ETHER1_RAM + ((addr & 4095) << 1));
 if (svflgs)
  local_irq_restore (flags);
 return ret;
}
