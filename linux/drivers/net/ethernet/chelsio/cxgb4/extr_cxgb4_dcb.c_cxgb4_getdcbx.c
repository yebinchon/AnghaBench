
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int supported; } ;
struct port_info {TYPE_1__ dcb; } ;
struct net_device {int dummy; } ;


 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static u8 cxgb4_getdcbx(struct net_device *dev)
{
 struct port_info *pi = netdev2pinfo(dev);


 return pi->dcb.supported;
}
