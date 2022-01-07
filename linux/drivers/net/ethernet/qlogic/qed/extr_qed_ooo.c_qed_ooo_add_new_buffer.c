
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct qed_ooo_isle {int buffers_list; } ;
struct qed_ooo_info {int dummy; } ;
struct qed_ooo_buffer {int list_entry; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__,int ) ;
 scalar_t__ QED_OOO_LEFT_BUF ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 struct qed_ooo_isle* qed_ooo_seek_isle (struct qed_hwfn*,struct qed_ooo_info*,int ,scalar_t__) ;

void qed_ooo_add_new_buffer(struct qed_hwfn *p_hwfn,
       struct qed_ooo_info *p_ooo_info,
       u32 cid,
       u8 ooo_isle,
       struct qed_ooo_buffer *p_buffer, u8 buffer_side)
{
 struct qed_ooo_isle *p_isle = ((void*)0);

 p_isle = qed_ooo_seek_isle(p_hwfn, p_ooo_info, cid, ooo_isle);
 if (!p_isle) {
  DP_NOTICE(p_hwfn,
     "Isle %d is not found(cid %d)\n", ooo_isle, cid);
  return;
 }

 if (buffer_side == QED_OOO_LEFT_BUF)
  list_add(&p_buffer->list_entry, &p_isle->buffers_list);
 else
  list_add_tail(&p_buffer->list_entry, &p_isle->buffers_list);
}
