
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_sb_cnt_info {int dummy; } ;
struct qed_igu_info {int usage; } ;
struct TYPE_2__ {struct qed_igu_info* p_igu_info; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;


 int memcpy (struct qed_sb_cnt_info*,int *,int) ;

void qed_int_get_num_sbs(struct qed_hwfn *p_hwfn,
    struct qed_sb_cnt_info *p_sb_cnt_info)
{
 struct qed_igu_info *info = p_hwfn->hw_info.p_igu_info;

 if (!info || !p_sb_cnt_info)
  return;

 memcpy(p_sb_cnt_info, &info->usage, sizeof(*p_sb_cnt_info));
}
