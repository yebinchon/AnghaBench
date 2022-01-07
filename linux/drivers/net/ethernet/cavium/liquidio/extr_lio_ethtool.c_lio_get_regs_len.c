
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int chip_id; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;


 struct lio* GET_LIO (struct net_device*) ;


 int OCT_ETHTOOL_REGDUMP_LEN ;
 int OCT_ETHTOOL_REGDUMP_LEN_23XX ;
 int OCT_ETHTOOL_REGDUMP_LEN_23XX_VF ;

__attribute__((used)) static int lio_get_regs_len(struct net_device *dev)
{
 struct lio *lio = GET_LIO(dev);
 struct octeon_device *oct = lio->oct_dev;

 switch (oct->chip_id) {
 case 129:
  return OCT_ETHTOOL_REGDUMP_LEN_23XX;
 case 128:
  return OCT_ETHTOOL_REGDUMP_LEN_23XX_VF;
 default:
  return OCT_ETHTOOL_REGDUMP_LEN;
 }
}
