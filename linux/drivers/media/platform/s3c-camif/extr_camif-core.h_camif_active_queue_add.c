
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_vp {int active_buffers; int active_buf_q; } ;
struct camif_buffer {int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void camif_active_queue_add(struct camif_vp *vp,
       struct camif_buffer *buf)
{
 list_add_tail(&buf->list, &vp->active_buf_q);
 vp->active_buffers++;
}
