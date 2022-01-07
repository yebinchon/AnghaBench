
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct qed_sb_attn_info {scalar_t__ index; TYPE_1__* sb_attn; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {int sb_index; } ;


 scalar_t__ QED_SB_ATT_IDX ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 qed_attn_update_idx(struct qed_hwfn *p_hwfn,
          struct qed_sb_attn_info *p_sb_desc)
{
 u16 rc = 0, index;

 index = le16_to_cpu(p_sb_desc->sb_attn->sb_index);
 if (p_sb_desc->index != index) {
  p_sb_desc->index = index;
  rc = QED_SB_ATT_IDX;
 }

 return rc;
}
