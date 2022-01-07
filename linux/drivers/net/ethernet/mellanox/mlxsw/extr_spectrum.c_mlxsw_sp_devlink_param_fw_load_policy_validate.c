
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union devlink_param_value {scalar_t__ vu8; } ;
typedef int u32 ;
struct netlink_ext_ack {int dummy; } ;
struct devlink {int dummy; } ;


 scalar_t__ DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_DRIVER ;
 scalar_t__ DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_FLASH ;
 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;

__attribute__((used)) static int
mlxsw_sp_devlink_param_fw_load_policy_validate(struct devlink *devlink, u32 id,
            union devlink_param_value val,
            struct netlink_ext_ack *extack)
{
 if ((val.vu8 != DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_DRIVER) &&
     (val.vu8 != DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_FLASH)) {
  NL_SET_ERR_MSG_MOD(extack, "'fw_load_policy' must be 'driver' or 'flash'");
  return -EINVAL;
 }

 return 0;
}
