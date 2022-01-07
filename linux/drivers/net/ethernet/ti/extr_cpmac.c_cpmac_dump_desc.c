
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int name; } ;
struct cpmac_desc {int dummy; } ;


 int printk (char*,...) ;

__attribute__((used)) static void cpmac_dump_desc(struct net_device *dev, struct cpmac_desc *desc)
{
 int i;

 printk("%s: desc[%p]:", dev->name, desc);
 for (i = 0; i < sizeof(*desc) / 4; i++)
  printk(" %08x", ((u32 *)desc)[i]);
 printk("\n");
}
