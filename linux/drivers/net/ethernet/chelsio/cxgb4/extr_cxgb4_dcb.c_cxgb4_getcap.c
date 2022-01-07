
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

__attribute__((used)) static u8 cxgb4_getcap(struct net_device *dev, int cap_id, u8 *caps)
{
 struct port_info *pi = netdev2pinfo(dev);

 switch (cap_id) {
 case 130:
 case 132:
  *caps = 1;
  break;

 case 129:

  *caps = 0x80;
  break;

 case 131:

  *caps = 0x80;
  break;

 case 133:
  *caps = 1;
  break;

 case 128:
 case 135:
  *caps = 0;
  break;

 case 134:
  *caps = pi->dcb.supported;
  break;

 default:
  *caps = 0;
 }

 return 0;
}
