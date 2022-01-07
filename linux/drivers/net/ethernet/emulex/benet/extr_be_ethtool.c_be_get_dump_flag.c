
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_dump {int version; int flag; int len; } ;
struct be_adapter {int dummy; } ;


 int EOPNOTSUPP ;
 int MAX_PRIVILEGES ;
 int be_get_dump_len (struct be_adapter*) ;
 int check_privilege (struct be_adapter*,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
be_get_dump_flag(struct net_device *netdev, struct ethtool_dump *dump)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 if (!check_privilege(adapter, MAX_PRIVILEGES))
  return -EOPNOTSUPP;

 dump->len = be_get_dump_len(adapter);
 dump->version = 1;
 dump->flag = 0x1;
 return 0;
}
