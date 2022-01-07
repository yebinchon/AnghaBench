
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_eee {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int i40e_get_eee(struct net_device *netdev, struct ethtool_eee *edata)
{
 return -EOPNOTSUPP;
}
