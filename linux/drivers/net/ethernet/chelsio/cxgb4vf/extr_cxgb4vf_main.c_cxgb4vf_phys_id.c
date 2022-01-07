
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int viid; int adapter; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EINVAL ;
 int ETHTOOL_ID_ACTIVE ;
 int ETHTOOL_ID_INACTIVE ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4vf_identify_port (int ,int ,unsigned int) ;

__attribute__((used)) static int cxgb4vf_phys_id(struct net_device *dev,
      enum ethtool_phys_id_state state)
{
 unsigned int val;
 struct port_info *pi = netdev_priv(dev);

 if (state == ETHTOOL_ID_ACTIVE)
  val = 0xffff;
 else if (state == ETHTOOL_ID_INACTIVE)
  val = 0;
 else
  return -EINVAL;

 return t4vf_identify_port(pi->adapter, pi->viid, val);
}
