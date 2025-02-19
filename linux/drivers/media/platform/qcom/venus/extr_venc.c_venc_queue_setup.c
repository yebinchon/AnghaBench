
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venus_inst {unsigned int input_buf_size; unsigned int output_buf_size; unsigned int num_input_bufs; unsigned int num_output_bufs; int height; int width; TYPE_2__* fmt_cap; TYPE_1__* fmt_out; } ;
struct vb2_queue {int type; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int num_planes; int pixfmt; } ;
struct TYPE_3__ {unsigned int num_planes; int pixfmt; } ;


 int EINVAL ;


 unsigned int max (unsigned int,unsigned int) ;
 struct venus_inst* vb2_get_drv_priv (struct vb2_queue*) ;
 int venc_out_num_buffers (struct venus_inst*,unsigned int*) ;
 unsigned int venus_helper_get_framesz (int ,int ,int ) ;

__attribute__((used)) static int venc_queue_setup(struct vb2_queue *q,
       unsigned int *num_buffers, unsigned int *num_planes,
       unsigned int sizes[], struct device *alloc_devs[])
{
 struct venus_inst *inst = vb2_get_drv_priv(q);
 unsigned int num, min = 4;
 int ret = 0;

 if (*num_planes) {
  if (q->type == 128 &&
      *num_planes != inst->fmt_out->num_planes)
   return -EINVAL;

  if (q->type == 129 &&
      *num_planes != inst->fmt_cap->num_planes)
   return -EINVAL;

  if (q->type == 128 &&
      sizes[0] < inst->input_buf_size)
   return -EINVAL;

  if (q->type == 129 &&
      sizes[0] < inst->output_buf_size)
   return -EINVAL;

  return 0;
 }

 switch (q->type) {
 case 128:
  *num_planes = inst->fmt_out->num_planes;

  ret = venc_out_num_buffers(inst, &num);
  if (ret)
   break;

  num = max(num, min);
  *num_buffers = max(*num_buffers, num);
  inst->num_input_bufs = *num_buffers;

  sizes[0] = venus_helper_get_framesz(inst->fmt_out->pixfmt,
          inst->width,
          inst->height);
  inst->input_buf_size = sizes[0];
  break;
 case 129:
  *num_planes = inst->fmt_cap->num_planes;
  *num_buffers = max(*num_buffers, min);
  inst->num_output_bufs = *num_buffers;
  sizes[0] = venus_helper_get_framesz(inst->fmt_cap->pixfmt,
          inst->width,
          inst->height);
  sizes[0] = max(sizes[0], inst->output_buf_size);
  inst->output_buf_size = sizes[0];
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
