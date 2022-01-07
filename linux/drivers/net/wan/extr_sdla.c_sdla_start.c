
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;
struct frad_local {int type; int state; } ;


 int SDLA_CPUEN ;
 scalar_t__ SDLA_REG_CONTROL ;
 scalar_t__ SDLA_REG_Z80_CONTROL ;

 int SDLA_S502A_NMI ;
 int SDLA_S502A_START ;

 int SDLA_S502E_CPUEN ;


 struct frad_local* netdev_priv (struct net_device*) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void sdla_start(struct net_device *dev)
{
 struct frad_local *flp;

 flp = netdev_priv(dev);
 switch(flp->type)
 {
  case 131:
   outb(SDLA_S502A_NMI, dev->base_addr + SDLA_REG_CONTROL);
   outb(SDLA_S502A_START, dev->base_addr + SDLA_REG_CONTROL);
   flp->state = SDLA_S502A_START;
   break;
  case 130:
   outb(SDLA_S502E_CPUEN, dev->base_addr + SDLA_REG_Z80_CONTROL);
   outb(0x00, dev->base_addr + SDLA_REG_CONTROL);
   flp->state = 0;
   break;
  case 129:
   flp->state |= SDLA_CPUEN;
   outb(flp->state, dev->base_addr + SDLA_REG_CONTROL);
   break;
  case 128:
   flp->state |= SDLA_CPUEN;
   outb(flp->state, dev->base_addr + SDLA_REG_CONTROL);
   break;
 }
}
