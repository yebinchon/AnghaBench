
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_ts_info {int dummy; } ;
struct dsa_switch {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int mv88e6xxx_get_ts_info(struct dsa_switch *ds, int port,
     struct ethtool_ts_info *info)
{
 return -EOPNOTSUPP;
}
