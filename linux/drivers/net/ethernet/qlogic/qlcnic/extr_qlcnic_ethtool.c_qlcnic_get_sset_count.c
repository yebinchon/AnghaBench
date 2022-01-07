
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int QLCNIC_TEST_LEN ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_dev_statistics_len (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_get_sset_count(struct net_device *dev, int sset)
{

 struct qlcnic_adapter *adapter = netdev_priv(dev);
 switch (sset) {
 case 128:
  return QLCNIC_TEST_LEN;
 case 129:
  return qlcnic_dev_statistics_len(adapter);
 default:
  return -EOPNOTSUPP;
 }
}
