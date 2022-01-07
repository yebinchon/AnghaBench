
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 int AUTOINCflag ;
 int COM20020_REG_RW_MEMDATA ;
 int COM20020_REG_W_ADDR_LO ;
 int RDDATAflag ;
 int arcnet_inb (int,int) ;
 int arcnet_outb (int,int,int ) ;
 int com20020_REG_W_ADDR_HI ;
 int netdev_dbg (struct net_device*,char*) ;
 int pr_cont (char*,...) ;

__attribute__((used)) static void regdump(struct net_device *dev)
{
}
