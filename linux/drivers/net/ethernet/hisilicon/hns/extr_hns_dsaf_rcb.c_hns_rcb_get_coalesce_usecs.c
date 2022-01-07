
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rcb_common_cb {TYPE_1__* dsaf_dev; } ;
struct TYPE_2__ {int dsaf_ver; } ;


 scalar_t__ AE_IS_VER1 (int ) ;
 int HNS_RCB_CLK_FREQ_MHZ ;
 scalar_t__ RCB_CFG_OVERTIME_REG ;
 scalar_t__ RCB_PORT_CFG_OVERTIME_REG ;
 int dsaf_read_dev (struct rcb_common_cb*,scalar_t__) ;

u32 hns_rcb_get_coalesce_usecs(
 struct rcb_common_cb *rcb_common, u32 port_idx)
{
 if (AE_IS_VER1(rcb_common->dsaf_dev->dsaf_ver))
  return dsaf_read_dev(rcb_common, RCB_CFG_OVERTIME_REG) /
         HNS_RCB_CLK_FREQ_MHZ;
 else
  return dsaf_read_dev(rcb_common,
         RCB_PORT_CFG_OVERTIME_REG + port_idx * 4);
}
