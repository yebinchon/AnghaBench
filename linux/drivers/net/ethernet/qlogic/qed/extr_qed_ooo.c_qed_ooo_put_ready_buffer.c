
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qed_ooo_info {int ready_buffers_list; } ;
struct qed_ooo_buffer {int list_entry; } ;
struct qed_hwfn {int dummy; } ;


 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;

void qed_ooo_put_ready_buffer(struct qed_hwfn *p_hwfn,
         struct qed_ooo_info *p_ooo_info,
         struct qed_ooo_buffer *p_buffer, u8 on_tail)
{
 if (on_tail)
  list_add_tail(&p_buffer->list_entry,
         &p_ooo_info->ready_buffers_list);
 else
  list_add(&p_buffer->list_entry,
    &p_ooo_info->ready_buffers_list);
}
