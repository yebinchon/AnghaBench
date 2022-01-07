
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mem_end; scalar_t__ mem_start; } ;


 int ENODEV ;
 int ether1_ramtest (struct net_device*,int) ;

__attribute__((used)) static int
ether1_init_2(struct net_device *dev)
{
 int i;
 dev->mem_start = 0;

 i = ether1_ramtest (dev, 0x5a);

 if (i > 0)
  i = ether1_ramtest (dev, 0x1e);

 if (i <= 0)
      return -ENODEV;

 dev->mem_end = i;
 return 0;
}
