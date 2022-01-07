
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rcb_common_cb {TYPE_1__* dsaf_dev; } ;
struct TYPE_2__ {int dsaf_ver; } ;


 scalar_t__ AE_IS_VER1 (int ) ;
 int HNS_DSAF_IS_DEBUG (TYPE_1__*) ;
 int HNS_RCB_CLK_FREQ_MHZ ;
 int HNS_RCB_DEF_GAP_TIME_USECS ;
 scalar_t__ RCB_CFG_OVERTIME_REG ;
 scalar_t__ RCB_PORT_CFG_OVERTIME_REG ;
 scalar_t__ RCB_PORT_INT_GAPTIME_REG ;
 int dsaf_write_dev (struct rcb_common_cb*,scalar_t__,int) ;

__attribute__((used)) static void hns_rcb_set_port_timeout(
 struct rcb_common_cb *rcb_common, u32 port_idx, u32 timeout)
{
 if (AE_IS_VER1(rcb_common->dsaf_dev->dsaf_ver)) {
  dsaf_write_dev(rcb_common, RCB_CFG_OVERTIME_REG,
          timeout * HNS_RCB_CLK_FREQ_MHZ);
 } else if (!HNS_DSAF_IS_DEBUG(rcb_common->dsaf_dev)) {
  if (timeout > HNS_RCB_DEF_GAP_TIME_USECS)
   dsaf_write_dev(rcb_common,
           RCB_PORT_INT_GAPTIME_REG + port_idx * 4,
           HNS_RCB_DEF_GAP_TIME_USECS);
  else
   dsaf_write_dev(rcb_common,
           RCB_PORT_INT_GAPTIME_REG + port_idx * 4,
           timeout);

  dsaf_write_dev(rcb_common,
          RCB_PORT_CFG_OVERTIME_REG + port_idx * 4,
          timeout);
 } else {
  dsaf_write_dev(rcb_common,
          RCB_PORT_CFG_OVERTIME_REG + port_idx * 4,
          timeout);
 }
}
