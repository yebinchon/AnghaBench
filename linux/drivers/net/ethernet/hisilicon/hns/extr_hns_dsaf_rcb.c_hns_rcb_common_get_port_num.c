
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcb_common_cb {int dsaf_dev; } ;


 int HNS_DSAF_IS_DEBUG (int ) ;
 int HNS_RCB_DEBUG_NW_ENGINE_NUM ;
 int HNS_RCB_SERVICE_NW_ENGINE_NUM ;

__attribute__((used)) static int hns_rcb_common_get_port_num(struct rcb_common_cb *rcb_common)
{
 if (!HNS_DSAF_IS_DEBUG(rcb_common->dsaf_dev))
  return HNS_RCB_SERVICE_NW_ENGINE_NUM;
 else
  return HNS_RCB_DEBUG_NW_ENGINE_NUM;
}
