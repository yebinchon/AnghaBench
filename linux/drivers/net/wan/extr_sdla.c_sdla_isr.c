
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char irq; scalar_t__ base_addr; } ;
struct frad_local {scalar_t__ type; int state; int initialized; } ;
typedef int irqreturn_t ;
typedef int byte ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SDLA_502_IRQ_INTERFACE ;
 int SDLA_508_IRQ_INTERFACE ;






 int SDLA_READ_DLC_STATUS ;
 scalar_t__ SDLA_REG_CONTROL ;
 scalar_t__ SDLA_S502E ;
 int SDLA_S502E_INTACK ;
 scalar_t__ SDLA_S508 ;
 struct frad_local* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,char) ;
 int outb (int ,scalar_t__) ;
 char sdla_byte (struct net_device*,int ) ;
 int sdla_cmd (struct net_device*,int ,int ,int ,int *,int ,int *,int *) ;
 int sdla_receive (struct net_device*) ;
 int sdla_write (struct net_device*,int ,char*,int) ;

__attribute__((used)) static irqreturn_t sdla_isr(int dummy, void *dev_id)
{
 struct net_device *dev;
 struct frad_local *flp;
 char byte;

 dev = dev_id;

 flp = netdev_priv(dev);

 if (!flp->initialized)
 {
  netdev_warn(dev, "irq %d for uninitialized device\n", dev->irq);
  return IRQ_NONE;
 }

 byte = sdla_byte(dev, flp->type == SDLA_S508 ? SDLA_508_IRQ_INTERFACE : SDLA_502_IRQ_INTERFACE);
 switch (byte)
 {
  case 131:
   sdla_receive(dev);
   break;


  case 132:
  case 130:
   sdla_cmd(dev, SDLA_READ_DLC_STATUS, 0, 0, ((void*)0), 0, ((void*)0), ((void*)0));
   break;

  case 128:
  case 133:
  case 129:
   netdev_warn(dev, "invalid irq flag 0x%02X\n", byte);
   break;
 }


 if (flp->type == SDLA_S502E)
 {
  flp->state &= ~SDLA_S502E_INTACK;
  outb(flp->state, dev->base_addr + SDLA_REG_CONTROL);
  flp->state |= SDLA_S502E_INTACK;
  outb(flp->state, dev->base_addr + SDLA_REG_CONTROL);
 }


 byte = 0;
 sdla_write(dev, flp->type == SDLA_S508 ? SDLA_508_IRQ_INTERFACE : SDLA_502_IRQ_INTERFACE, &byte, sizeof(byte));
 return IRQ_HANDLED;
}
