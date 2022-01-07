
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ooo_info {int free_buffers_list; } ;
struct qed_ooo_buffer {int list_entry; } ;
struct qed_hwfn {int dummy; } ;


 int list_add_tail (int *,int *) ;

void qed_ooo_put_free_buffer(struct qed_hwfn *p_hwfn,
        struct qed_ooo_info *p_ooo_info,
        struct qed_ooo_buffer *p_buffer)
{
 list_add_tail(&p_buffer->list_entry, &p_ooo_info->free_buffers_list);
}
