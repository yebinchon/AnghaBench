
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int do_vxge_close (struct net_device*,int) ;

__attribute__((used)) static int vxge_close(struct net_device *dev)
{
 do_vxge_close(dev, 1);
 return 0;
}
