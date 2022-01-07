
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;






 int capable (int ) ;
 int eql_emancipate (struct net_device*,int ) ;
 int eql_enslave (struct net_device*,int ) ;
 int eql_g_master_cfg (struct net_device*,int ) ;
 int eql_g_slave_cfg (struct net_device*,int ) ;
 int eql_s_master_cfg (struct net_device*,int ) ;
 int eql_s_slave_cfg (struct net_device*,int ) ;

__attribute__((used)) static int eql_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 if (cmd != 131 && cmd != 130 &&
     !capable(CAP_NET_ADMIN))
    return -EPERM;

 switch (cmd) {
  case 132:
   return eql_enslave(dev, ifr->ifr_data);
  case 133:
   return eql_emancipate(dev, ifr->ifr_data);
  case 130:
   return eql_g_slave_cfg(dev, ifr->ifr_data);
  case 128:
   return eql_s_slave_cfg(dev, ifr->ifr_data);
  case 131:
   return eql_g_master_cfg(dev, ifr->ifr_data);
  case 129:
   return eql_s_master_cfg(dev, ifr->ifr_data);
  default:
   return -EOPNOTSUPP;
 }
}
