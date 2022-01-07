
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;
struct TYPE_2__ {int speed; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int EIO ;
 int EOPNOTSUPP ;
 int QLCNIC_RCODE_NOT_SUPPORTED ;



 int qlcnic_fw_cmd_set_port (struct qlcnic_adapter*,int) ;

__attribute__((used)) static int qlcnic_set_port_config(struct qlcnic_adapter *adapter,
      const struct ethtool_link_ksettings *ecmd)
{
 u32 ret = 0, config = 0;

 if (ecmd->base.duplex)
  config |= 0x1;

 if (ecmd->base.autoneg)
  config |= 0x2;

 switch (ecmd->base.speed) {
 case 130:
  config |= (0 << 8);
  break;
 case 129:
  config |= (1 << 8);
  break;
 case 128:
  config |= (10 << 8);
  break;
 default:
  return -EIO;
 }

 ret = qlcnic_fw_cmd_set_port(adapter, config);

 if (ret == QLCNIC_RCODE_NOT_SUPPORTED)
  return -EOPNOTSUPP;
 else if (ret)
  return -EIO;
 return ret;
}
