
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned long base_addr; } ;
struct ei_device {int dummy; } ;


 scalar_t__ E8390_CMD ;
 int E8390_NODMA ;
 int E8390_PAGE0 ;
 int E8390_START ;
 int E8390_TRANS ;
 scalar_t__ EN0_TCNTHI ;
 scalar_t__ EN0_TCNTLO ;
 scalar_t__ EN0_TPSR ;
 int ei_inb_p (scalar_t__) ;
 int ei_outb_p (int,scalar_t__) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;

__attribute__((used)) static void NS8390_trigger_send(struct net_device *dev, unsigned int length,
        int start_page)
{
 unsigned long e8390_base = dev->base_addr;
 struct ei_device *ei_local __attribute((unused)) = netdev_priv(dev);

 ei_outb_p(E8390_NODMA+E8390_PAGE0, e8390_base+E8390_CMD);

 if (ei_inb_p(e8390_base + E8390_CMD) & E8390_TRANS) {
  netdev_warn(dev, "trigger_send() called with the transmitter busy\n");
  return;
 }
 ei_outb_p(length & 0xff, e8390_base + EN0_TCNTLO);
 ei_outb_p(length >> 8, e8390_base + EN0_TCNTHI);
 ei_outb_p(start_page, e8390_base + EN0_TPSR);
 ei_outb_p(E8390_NODMA+E8390_TRANS+E8390_START, e8390_base+E8390_CMD);
}
