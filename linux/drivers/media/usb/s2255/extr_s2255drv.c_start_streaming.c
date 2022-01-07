
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_4__ {TYPE_1__* frame; } ;
struct s2255_vc {int last_frame; TYPE_2__ buffer; scalar_t__ frame_count; scalar_t__ cur_frame; scalar_t__ bad_payload; } ;
struct TYPE_3__ {scalar_t__ cur_size; int ulState; } ;


 int S2255_READ_IDLE ;
 int SYS_FRAMES ;
 int s2255_start_acquire (struct s2255_vc*) ;
 struct s2255_vc* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct s2255_vc *vc = vb2_get_drv_priv(vq);
 int j;

 vc->last_frame = -1;
 vc->bad_payload = 0;
 vc->cur_frame = 0;
 vc->frame_count = 0;
 for (j = 0; j < SYS_FRAMES; j++) {
  vc->buffer.frame[j].ulState = S2255_READ_IDLE;
  vc->buffer.frame[j].cur_size = 0;
 }
 return s2255_start_acquire(vc);
}
