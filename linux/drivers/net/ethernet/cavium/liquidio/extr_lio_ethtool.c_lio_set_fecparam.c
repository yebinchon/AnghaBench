
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {scalar_t__ subsystem_id; int no_speed_setting; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ethtool_fecparam {int fec; } ;


 int EOPNOTSUPP ;
 int ETHTOOL_FEC_OFF ;
 int ETHTOOL_FEC_RS ;
 struct lio* GET_LIO (struct net_device*) ;
 scalar_t__ OCTEON_CN2350_25GB_SUBSYS_ID ;
 scalar_t__ OCTEON_CN2360_25GB_SUBSYS_ID ;
 int liquidio_set_fec (struct lio*,int) ;

__attribute__((used)) static int lio_set_fecparam(struct net_device *netdev,
       struct ethtool_fecparam *fec)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;

 if (oct->subsystem_id == OCTEON_CN2350_25GB_SUBSYS_ID ||
     oct->subsystem_id == OCTEON_CN2360_25GB_SUBSYS_ID) {
  if (oct->no_speed_setting == 1)
   return -EOPNOTSUPP;

  if (fec->fec & ETHTOOL_FEC_OFF)
   liquidio_set_fec(lio, 0);
  else if (fec->fec & ETHTOOL_FEC_RS)
   liquidio_set_fec(lio, 1);
  else
   return -EOPNOTSUPP;
 } else {
  return -EOPNOTSUPP;
 }

 return 0;
}
