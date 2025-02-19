
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int QED_VPORT ;
 scalar_t__ RESC_NUM (struct qed_hwfn*,int ) ;
 scalar_t__ RESC_START (struct qed_hwfn*,int ) ;

int qed_fw_vport(struct qed_hwfn *p_hwfn, u8 src_id, u8 *dst_id)
{
 if (src_id >= RESC_NUM(p_hwfn, QED_VPORT)) {
  u8 min, max;

  min = (u8)RESC_START(p_hwfn, QED_VPORT);
  max = min + RESC_NUM(p_hwfn, QED_VPORT);
  DP_NOTICE(p_hwfn,
     "vport id [%d] is not valid, available indices [%d - %d]\n",
     src_id, min, max);

  return -EINVAL;
 }

 *dst_id = RESC_START(p_hwfn, QED_VPORT) + src_id;

 return 0;
}
