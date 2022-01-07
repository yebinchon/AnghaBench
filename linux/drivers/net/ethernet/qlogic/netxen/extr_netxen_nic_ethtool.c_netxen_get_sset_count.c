
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int NETXEN_NIC_STATS_LEN ;
 int NETXEN_NIC_TEST_LEN ;

__attribute__((used)) static int netxen_get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return NETXEN_NIC_TEST_LEN;
 case 129:
  return NETXEN_NIC_STATS_LEN;
 default:
  return -EOPNOTSUPP;
 }
}
