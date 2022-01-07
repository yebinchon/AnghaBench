
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int QED_RSS_ENG ;
 scalar_t__ RESC_NUM (struct qed_hwfn*,int ) ;
 scalar_t__ RESC_START (struct qed_hwfn*,int ) ;

int qed_fw_rss_eng(struct qed_hwfn *p_hwfn, u8 src_id, u8 *dst_id)
{
 if (src_id >= RESC_NUM(p_hwfn, QED_RSS_ENG)) {
  u8 min, max;

  min = (u8)RESC_START(p_hwfn, QED_RSS_ENG);
  max = min + RESC_NUM(p_hwfn, QED_RSS_ENG);
  DP_NOTICE(p_hwfn,
     "rss_eng id [%d] is not valid, available indices [%d - %d]\n",
     src_id, min, max);

  return -EINVAL;
 }

 *dst_id = RESC_START(p_hwfn, QED_RSS_ENG) + src_id;

 return 0;
}
