
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_output {int state; struct camss_buffer** buf; int active_buf; } ;
struct vfe_device {TYPE_1__* camss; } ;
struct camss_buffer {int dummy; } ;
struct TYPE_2__ {int dev; } ;





 int dev_err_ratelimited (int ,char*) ;
 int vfe_buf_add_pending (struct vfe_output*,struct camss_buffer*) ;
 int vfe_output_frame_drop (struct vfe_device*,struct vfe_output*,int) ;
 int vfe_output_init_addrs (struct vfe_device*,struct vfe_output*,int) ;
 int vfe_output_update_ping_addr (struct vfe_device*,struct vfe_output*,int ) ;
 int vfe_output_update_pong_addr (struct vfe_device*,struct vfe_output*,int ) ;

__attribute__((used)) static void vfe_buf_update_wm_on_new(struct vfe_device *vfe,
         struct vfe_output *output,
         struct camss_buffer *new_buf)
{
 int inactive_idx;

 switch (output->state) {
 case 128:
  inactive_idx = !output->active_buf;

  if (!output->buf[inactive_idx]) {
   output->buf[inactive_idx] = new_buf;

   if (inactive_idx)
    vfe_output_update_pong_addr(vfe, output, 0);
   else
    vfe_output_update_ping_addr(vfe, output, 0);

   vfe_output_frame_drop(vfe, output, 3);
   output->state = 130;
  } else {
   vfe_buf_add_pending(output, new_buf);
   dev_err_ratelimited(vfe->camss->dev,
         "Inactive buffer is busy\n");
  }
  break;

 case 129:
  if (!output->buf[0]) {
   output->buf[0] = new_buf;

   vfe_output_init_addrs(vfe, output, 1);

   vfe_output_frame_drop(vfe, output, 1);
   output->state = 128;
  } else {
   vfe_buf_add_pending(output, new_buf);
   dev_err_ratelimited(vfe->camss->dev,
         "Output idle with buffer set!\n");
  }
  break;

 case 130:
 default:
  vfe_buf_add_pending(output, new_buf);
  break;
 }
}
