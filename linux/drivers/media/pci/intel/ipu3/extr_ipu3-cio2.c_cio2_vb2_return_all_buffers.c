
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cio2_queue {TYPE_2__** bufs; int bufs_queued; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_3__ {int vb2_buf; } ;
struct TYPE_4__ {TYPE_1__ vbb; } ;


 unsigned int CIO2_MAX_BUFFERS ;
 int atomic_dec (int *) ;
 int vb2_buffer_done (int *,int) ;

__attribute__((used)) static void cio2_vb2_return_all_buffers(struct cio2_queue *q,
     enum vb2_buffer_state state)
{
 unsigned int i;

 for (i = 0; i < CIO2_MAX_BUFFERS; i++) {
  if (q->bufs[i]) {
   atomic_dec(&q->bufs_queued);
   vb2_buffer_done(&q->bufs[i]->vbb.vb2_buf,
     state);
  }
 }
}
