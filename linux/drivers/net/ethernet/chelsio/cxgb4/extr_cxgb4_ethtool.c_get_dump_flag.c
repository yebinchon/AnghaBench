
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_dump {int version; int len; int flag; } ;
struct TYPE_2__ {int version; int len; int flag; } ;
struct adapter {TYPE_1__ eth_dump; } ;


 struct adapter* netdev2adap (struct net_device*) ;

__attribute__((used)) static int get_dump_flag(struct net_device *dev, struct ethtool_dump *eth_dump)
{
 struct adapter *adapter = netdev2adap(dev);

 eth_dump->flag = adapter->eth_dump.flag;
 eth_dump->len = adapter->eth_dump.len;
 eth_dump->version = adapter->eth_dump.version;
 return 0;
}
