
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_rcv_buf_cb {struct ql_rcv_buf_cb* next; } ;
struct ql3_adapter {int lrg_buf_free_count; int * lrg_buf_free_tail; struct ql_rcv_buf_cb* lrg_buf_free_head; } ;



__attribute__((used)) static struct ql_rcv_buf_cb *ql_get_from_lrg_buf_free_list(struct ql3_adapter
          *qdev)
{
 struct ql_rcv_buf_cb *lrg_buf_cb = qdev->lrg_buf_free_head;

 if (lrg_buf_cb != ((void*)0)) {
  qdev->lrg_buf_free_head = lrg_buf_cb->next;
  if (qdev->lrg_buf_free_head == ((void*)0))
   qdev->lrg_buf_free_tail = ((void*)0);
  qdev->lrg_buf_free_count--;
 }

 return lrg_buf_cb;
}
