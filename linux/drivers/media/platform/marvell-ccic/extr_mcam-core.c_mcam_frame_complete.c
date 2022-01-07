
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frames; } ;
struct mcam_camera {int next_buf; scalar_t__ state; int (* frame_complete ) (struct mcam_camera*,int) ;TYPE_1__ frame_state; int sequence; scalar_t__* buf_seq; int flags; } ;


 int CF_DMA_ACTIVE ;
 scalar_t__ S_STREAMING ;
 int clear_bit (int ,int *) ;
 int set_bit (int,int *) ;
 int stub1 (struct mcam_camera*,int) ;

__attribute__((used)) static void mcam_frame_complete(struct mcam_camera *cam, int frame)
{



 set_bit(frame, &cam->flags);
 clear_bit(CF_DMA_ACTIVE, &cam->flags);
 cam->next_buf = frame;
 cam->buf_seq[frame] = cam->sequence++;
 cam->frame_state.frames++;



 if (cam->state != S_STREAMING)
  return;



 cam->frame_complete(cam, frame);
}
