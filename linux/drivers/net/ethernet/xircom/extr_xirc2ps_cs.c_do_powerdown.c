
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; } ;


 int PutByte (int ,int ) ;
 int SelectPage (int) ;
 int XIRCREG4_GPR1 ;
 int pr_debug (char*,struct net_device*) ;

__attribute__((used)) static void
do_powerdown(struct net_device *dev)
{

    unsigned int ioaddr = dev->base_addr;

    pr_debug("do_powerdown(%p)\n", dev);

    SelectPage(4);
    PutByte(XIRCREG4_GPR1, 0);
    SelectPage(0);
}
