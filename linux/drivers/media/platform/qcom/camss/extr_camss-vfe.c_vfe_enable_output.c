
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct vfe_output {int state; int* wm_idx; int wm_num; int reg_update; int sof; scalar_t__ wait_reg_update; scalar_t__ wait_sof; scalar_t__ sequence; int ** buf; } ;
struct TYPE_6__ {int pix_mp; } ;
struct TYPE_7__ {TYPE_1__ fmt; } ;
struct TYPE_8__ {TYPE_2__ active_fmt; } ;
struct TYPE_9__ {int entity; } ;
struct vfe_line {int id; TYPE_3__ video_out; TYPE_4__ subdev; struct vfe_output output; } ;
struct vfe_hw_ops {int (* get_ub_size ) (int ) ;int (* reg_update ) (struct vfe_device*,int ) ;int (* set_camif_cmd ) (struct vfe_device*,int) ;int (* set_clamp_cfg ) (struct vfe_device*) ;int (* set_crop_cfg ) (struct vfe_device*,struct vfe_line*) ;int (* set_scale_cfg ) (struct vfe_device*,struct vfe_line*) ;int (* set_demux_cfg ) (struct vfe_device*,struct vfe_line*) ;int (* set_xbar_cfg ) (struct vfe_device*,struct vfe_output*,int) ;int (* set_realign_cfg ) (struct vfe_device*,struct vfe_line*,int) ;int (* set_camif_cfg ) (struct vfe_device*,struct vfe_line*) ;int (* set_module_cfg ) (struct vfe_device*,int) ;int (* enable_irq_pix_line ) (struct vfe_device*,int ,int ,int) ;int (* bus_reload_wm ) (struct vfe_device*,int) ;int (* wm_enable ) (struct vfe_device*,int,int) ;int (* wm_line_based ) (struct vfe_device*,int,int *,unsigned int,int) ;int (* wm_set_ub_cfg ) (struct vfe_device*,int,int,int) ;int (* wm_set_subsample ) (struct vfe_device*,int) ;int (* set_cgc_override ) (struct vfe_device*,int,int) ;int (* wm_frame_based ) (struct vfe_device*,int,int) ;int (* set_rdi_cid ) (struct vfe_device*,int ,int ) ;int (* bus_connect_wm_to_rdi ) (struct vfe_device*,int,int ) ;int (* enable_irq_wm_line ) (struct vfe_device*,int,int ,int) ;int (* reg_update_clear ) (struct vfe_device*,int ) ;} ;
struct vfe_device {int output_lock; TYPE_5__* camss; int id; struct vfe_hw_ops* ops; } ;
struct v4l2_subdev {int dummy; } ;
struct media_entity {int dummy; } ;
struct TYPE_10__ {int dev; } ;


 int EINVAL ;
 int VFE_FRAME_DROP_VAL ;
 int VFE_LINE_PIX ;

 int VFE_OUTPUT_IDLE ;
 int VFE_OUTPUT_RESERVED ;

 struct media_entity* camss_find_sensor (int *) ;
 int dev_err (int ,char*,int) ;
 int g_skip_frames ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;
 int stub10 (struct vfe_device*,int,int) ;
 int stub11 (struct vfe_device*,int) ;
 int stub12 (struct vfe_device*,int,int) ;
 int stub13 (struct vfe_device*,int) ;
 int stub14 (struct vfe_device*,int,int,int) ;
 int stub15 (struct vfe_device*,int,int *,unsigned int,int) ;
 int stub16 (struct vfe_device*,int,int) ;
 int stub17 (struct vfe_device*,int) ;
 int stub18 (struct vfe_device*,int ,int ,int) ;
 int stub19 (struct vfe_device*,int) ;
 int stub2 (struct vfe_device*,int ) ;
 int stub20 (struct vfe_device*,struct vfe_line*) ;
 int stub21 (struct vfe_device*,struct vfe_line*,int) ;
 int stub22 (struct vfe_device*,struct vfe_output*,int) ;
 int stub23 (struct vfe_device*,struct vfe_line*) ;
 int stub24 (struct vfe_device*,struct vfe_line*) ;
 int stub25 (struct vfe_device*,struct vfe_line*) ;
 int stub26 (struct vfe_device*) ;
 int stub27 (struct vfe_device*,int) ;
 int stub28 (struct vfe_device*,int ) ;
 int stub3 (struct vfe_device*,int,int) ;
 int stub4 (struct vfe_device*,int,int ,int) ;
 int stub5 (struct vfe_device*,int,int ) ;
 int stub6 (struct vfe_device*,int) ;
 int stub7 (struct vfe_device*,int ,int ) ;
 int stub8 (struct vfe_device*,int,int,int) ;
 int stub9 (struct vfe_device*,int,int) ;
 struct vfe_device* to_vfe (struct vfe_line*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,struct media_entity*,int ,unsigned int*) ;
 void* vfe_buf_get_pending (struct vfe_output*) ;
 int vfe_output_frame_drop (struct vfe_device*,struct vfe_output*,int) ;
 int vfe_output_init_addrs (struct vfe_device*,struct vfe_output*,int ) ;

__attribute__((used)) static int vfe_enable_output(struct vfe_line *line)
{
 struct vfe_device *vfe = to_vfe(line);
 struct vfe_output *output = &line->output;
 const struct vfe_hw_ops *ops = vfe->ops;
 struct media_entity *sensor;
 unsigned long flags;
 unsigned int frame_skip = 0;
 unsigned int i;
 u16 ub_size;

 ub_size = ops->get_ub_size(vfe->id);
 if (!ub_size)
  return -EINVAL;

 sensor = camss_find_sensor(&line->subdev.entity);
 if (sensor) {
  struct v4l2_subdev *subdev =
     media_entity_to_v4l2_subdev(sensor);

  v4l2_subdev_call(subdev, sensor, g_skip_frames, &frame_skip);

  if (frame_skip > VFE_FRAME_DROP_VAL - 1)
   frame_skip = VFE_FRAME_DROP_VAL - 1;
 }

 spin_lock_irqsave(&vfe->output_lock, flags);

 ops->reg_update_clear(vfe, line->id);

 if (output->state != VFE_OUTPUT_RESERVED) {
  dev_err(vfe->camss->dev, "Output is not in reserved state %d\n",
   output->state);
  spin_unlock_irqrestore(&vfe->output_lock, flags);
  return -EINVAL;
 }
 output->state = VFE_OUTPUT_IDLE;

 output->buf[0] = vfe_buf_get_pending(output);
 output->buf[1] = vfe_buf_get_pending(output);

 if (!output->buf[0] && output->buf[1]) {
  output->buf[0] = output->buf[1];
  output->buf[1] = ((void*)0);
 }

 if (output->buf[0])
  output->state = 128;

 if (output->buf[1])
  output->state = 129;

 switch (output->state) {
 case 128:
  vfe_output_frame_drop(vfe, output, 1 << frame_skip);
  break;
 case 129:
  vfe_output_frame_drop(vfe, output, 3 << frame_skip);
  break;
 default:
  vfe_output_frame_drop(vfe, output, 0);
  break;
 }

 output->sequence = 0;
 output->wait_sof = 0;
 output->wait_reg_update = 0;
 reinit_completion(&output->sof);
 reinit_completion(&output->reg_update);

 vfe_output_init_addrs(vfe, output, 0);

 if (line->id != VFE_LINE_PIX) {
  ops->set_cgc_override(vfe, output->wm_idx[0], 1);
  ops->enable_irq_wm_line(vfe, output->wm_idx[0], line->id, 1);
  ops->bus_connect_wm_to_rdi(vfe, output->wm_idx[0], line->id);
  ops->wm_set_subsample(vfe, output->wm_idx[0]);
  ops->set_rdi_cid(vfe, line->id, 0);
  ops->wm_set_ub_cfg(vfe, output->wm_idx[0],
       (ub_size + 1) * output->wm_idx[0], ub_size);
  ops->wm_frame_based(vfe, output->wm_idx[0], 1);
  ops->wm_enable(vfe, output->wm_idx[0], 1);
  ops->bus_reload_wm(vfe, output->wm_idx[0]);
 } else {
  ub_size /= output->wm_num;
  for (i = 0; i < output->wm_num; i++) {
   ops->set_cgc_override(vfe, output->wm_idx[i], 1);
   ops->wm_set_subsample(vfe, output->wm_idx[i]);
   ops->wm_set_ub_cfg(vfe, output->wm_idx[i],
        (ub_size + 1) * output->wm_idx[i],
        ub_size);
   ops->wm_line_based(vfe, output->wm_idx[i],
     &line->video_out.active_fmt.fmt.pix_mp,
     i, 1);
   ops->wm_enable(vfe, output->wm_idx[i], 1);
   ops->bus_reload_wm(vfe, output->wm_idx[i]);
  }
  ops->enable_irq_pix_line(vfe, 0, line->id, 1);
  ops->set_module_cfg(vfe, 1);
  ops->set_camif_cfg(vfe, line);
  ops->set_realign_cfg(vfe, line, 1);
  ops->set_xbar_cfg(vfe, output, 1);
  ops->set_demux_cfg(vfe, line);
  ops->set_scale_cfg(vfe, line);
  ops->set_crop_cfg(vfe, line);
  ops->set_clamp_cfg(vfe);
  ops->set_camif_cmd(vfe, 1);
 }

 ops->reg_update(vfe, line->id);

 spin_unlock_irqrestore(&vfe->output_lock, flags);

 return 0;
}
