
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int igbvf_set_link_ksettings(struct net_device *netdev,
        const struct ethtool_link_ksettings *cmd)
{
 return -EOPNOTSUPP;
}
