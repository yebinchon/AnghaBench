
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct adapter {int pf; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_2__ {int viid; } ;


 int EINVAL ;
 int ETHTOOL_ID_ACTIVE ;
 int ETHTOOL_ID_INACTIVE ;
 struct adapter* netdev2adap (struct net_device*) ;
 TYPE_1__* netdev2pinfo (struct net_device*) ;
 int t4_identify_port (struct adapter*,int ,int ,unsigned int) ;

__attribute__((used)) static int identify_port(struct net_device *dev,
    enum ethtool_phys_id_state state)
{
 unsigned int val;
 struct adapter *adap = netdev2adap(dev);

 if (state == ETHTOOL_ID_ACTIVE)
  val = 0xffff;
 else if (state == ETHTOOL_ID_INACTIVE)
  val = 0;
 else
  return -EINVAL;

 return t4_identify_port(adap, adap->pf, netdev2pinfo(dev)->viid, val);
}
