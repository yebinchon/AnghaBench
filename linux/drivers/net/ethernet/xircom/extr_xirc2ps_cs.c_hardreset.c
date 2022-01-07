
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; } ;
struct local_info {scalar_t__ mohawk; } ;


 int PutByte (int ,int) ;
 int SelectPage (int) ;
 int XIRCREG4_GPR1 ;
 int msleep (int) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static void
hardreset(struct net_device *dev)
{
    struct local_info *local = netdev_priv(dev);
    unsigned int ioaddr = dev->base_addr;

    SelectPage(4);
    udelay(1);
    PutByte(XIRCREG4_GPR1, 0);
    msleep(40);
    if (local->mohawk)
 PutByte(XIRCREG4_GPR1, 1);
    else
 PutByte(XIRCREG4_GPR1, 1 | 4);
    msleep(20);
}
