
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int mlx5e_ethtool_get_rxnfc(struct net_device *dev,
       struct ethtool_rxnfc *info, u32 *rule_locs)
{ return -EOPNOTSUPP; }
