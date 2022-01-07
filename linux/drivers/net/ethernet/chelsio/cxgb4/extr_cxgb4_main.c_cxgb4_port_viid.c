
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned int viid; } ;


 TYPE_1__* netdev2pinfo (struct net_device const*) ;

unsigned int cxgb4_port_viid(const struct net_device *dev)
{
 return netdev2pinfo(dev)->viid;
}
