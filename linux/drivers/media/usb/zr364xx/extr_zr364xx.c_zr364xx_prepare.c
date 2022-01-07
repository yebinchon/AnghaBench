
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* frame; } ;
struct zr364xx_camera {size_t method; int skip; int last_frame; int ctrl_handler; TYPE_2__ buffer; scalar_t__ frame_count; scalar_t__ cur_frame; TYPE_3__* udev; } ;
struct TYPE_8__ {int size; int bytes; int value; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {scalar_t__ cur_size; int ulState; } ;


 int FRAMES ;
 int ZR364XX_READ_IDLE ;
 int dev_err (int *,char*,int) ;
 TYPE_4__** init ;
 int send_control_msg (TYPE_3__*,int,int ,int ,int ,int) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int zr364xx_prepare(struct zr364xx_camera *cam)
{
 int res;
 int i, j;

 for (i = 0; init[cam->method][i].size != -1; i++) {
  res = send_control_msg(cam->udev, 1, init[cam->method][i].value,
         0, init[cam->method][i].bytes,
         init[cam->method][i].size);
  if (res < 0) {
   dev_err(&cam->udev->dev,
    "error during open sequence: %d\n", i);
   return res;
  }
 }

 cam->skip = 2;
 cam->last_frame = -1;
 cam->cur_frame = 0;
 cam->frame_count = 0;
 for (j = 0; j < FRAMES; j++) {
  cam->buffer.frame[j].ulState = ZR364XX_READ_IDLE;
  cam->buffer.frame[j].cur_size = 0;
 }
 v4l2_ctrl_handler_setup(&cam->ctrl_handler);
 return 0;
}
