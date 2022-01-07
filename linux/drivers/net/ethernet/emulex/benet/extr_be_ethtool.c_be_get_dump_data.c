
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_dump {int len; } ;
struct be_adapter {int dummy; } ;


 int EOPNOTSUPP ;
 int MAX_PRIVILEGES ;
 int be_cmd_status (int) ;
 int be_read_dump_data (struct be_adapter*,int ,void*) ;
 int check_privilege (struct be_adapter*,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
be_get_dump_data(struct net_device *netdev, struct ethtool_dump *dump,
   void *buf)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 int status;

 if (!check_privilege(adapter, MAX_PRIVILEGES))
  return -EOPNOTSUPP;

 status = be_read_dump_data(adapter, dump->len, buf);
 return be_cmd_status(status);
}
