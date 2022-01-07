
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_4__ {int stream_mode; } ;
struct TYPE_5__ {TYPE_1__ camera_state; } ;
struct camera_data {TYPE_3__* curbuff; int wq_stream; TYPE_2__ params; int streaming; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_6__ {scalar_t__ status; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ FRAME_READY ;
 int cpia2_usb_stream_start (struct camera_data*,int ) ;
 int poll_requested_events (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int v4l2_ctrl_poll (struct file*,int *) ;

__poll_t cpia2_poll(struct camera_data *cam, struct file *filp,
   poll_table *wait)
{
 __poll_t status = v4l2_ctrl_poll(filp, wait);

 if ((poll_requested_events(wait) & (EPOLLIN | EPOLLRDNORM)) &&
   !cam->streaming) {

  cpia2_usb_stream_start(cam,
           cam->params.camera_state.stream_mode);
 }

 poll_wait(filp, &cam->wq_stream, wait);

 if (cam->curbuff->status == FRAME_READY)
  status |= EPOLLIN | EPOLLRDNORM;

 return status;
}
