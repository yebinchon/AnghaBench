
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {TYPE_1__* sb_virt; } ;
struct qed_sb_sp_info {TYPE_2__ sb_info; TYPE_3__* pi_info_arr; } ;
struct qed_hwfn {struct qed_sb_sp_info* p_sp_sb; } ;
typedef scalar_t__ qed_int_comp_cb_t ;
typedef int __le16 ;
struct TYPE_6__ {void* cookie; scalar_t__ comp_cb; } ;
struct TYPE_4__ {int * pi_array; } ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 int ENOMEM ;

int qed_int_register_cb(struct qed_hwfn *p_hwfn,
   qed_int_comp_cb_t comp_cb,
   void *cookie, u8 *sb_idx, __le16 **p_fw_cons)
{
 struct qed_sb_sp_info *p_sp_sb = p_hwfn->p_sp_sb;
 int rc = -ENOMEM;
 u8 pi;


 for (pi = 0; pi < ARRAY_SIZE(p_sp_sb->pi_info_arr); pi++) {
  if (p_sp_sb->pi_info_arr[pi].comp_cb)
   continue;

  p_sp_sb->pi_info_arr[pi].comp_cb = comp_cb;
  p_sp_sb->pi_info_arr[pi].cookie = cookie;
  *sb_idx = pi;
  *p_fw_cons = &p_sp_sb->sb_info.sb_virt->pi_array[pi];
  rc = 0;
  break;
 }

 return rc;
}
