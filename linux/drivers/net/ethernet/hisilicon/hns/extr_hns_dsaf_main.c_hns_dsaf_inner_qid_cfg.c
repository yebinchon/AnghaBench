
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dsaf_device {int dsaf_mode; int dsaf_ver; } ;


 scalar_t__ AE_IS_VER1 (int ) ;
 scalar_t__ DSAFV2_SERDES_LBK_0_REG ;
 int DSAFV2_SERDES_LBK_QID_M ;
 int DSAFV2_SERDES_LBK_QID_S ;
 int DSAF_SERVICE_NW_NUM ;
 int dsaf_set_dev_field (struct dsaf_device*,scalar_t__,int ,int ,int) ;
 int hns_rcb_get_queue_mode (int ,int*,int*) ;

__attribute__((used)) static void hns_dsaf_inner_qid_cfg(struct dsaf_device *dsaf_dev)
{
 u16 max_q_per_vf, max_vfn;
 u32 q_id, q_num_per_port;
 u32 mac_id;

 if (AE_IS_VER1(dsaf_dev->dsaf_ver))
  return;

 hns_rcb_get_queue_mode(dsaf_dev->dsaf_mode, &max_vfn, &max_q_per_vf);
 q_num_per_port = max_vfn * max_q_per_vf;

 for (mac_id = 0, q_id = 0; mac_id < DSAF_SERVICE_NW_NUM; mac_id++) {
  dsaf_set_dev_field(dsaf_dev,
       DSAFV2_SERDES_LBK_0_REG + 4 * mac_id,
       DSAFV2_SERDES_LBK_QID_M,
       DSAFV2_SERDES_LBK_QID_S,
       q_id);
  q_id += q_num_per_port;
 }
}
