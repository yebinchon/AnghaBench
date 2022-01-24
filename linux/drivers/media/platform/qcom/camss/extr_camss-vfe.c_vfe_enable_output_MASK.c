#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct vfe_output {int state; int* wm_idx; int wm_num; int /*<<< orphan*/  reg_update; int /*<<< orphan*/  sof; scalar_t__ wait_reg_update; scalar_t__ wait_sof; scalar_t__ sequence; int /*<<< orphan*/ ** buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  pix_mp; } ;
struct TYPE_7__ {TYPE_1__ fmt; } ;
struct TYPE_8__ {TYPE_2__ active_fmt; } ;
struct TYPE_9__ {int /*<<< orphan*/  entity; } ;
struct vfe_line {int /*<<< orphan*/  id; TYPE_3__ video_out; TYPE_4__ subdev; struct vfe_output output; } ;
struct vfe_hw_ops {int (* get_ub_size ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reg_update ) (struct vfe_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_camif_cmd ) (struct vfe_device*,int) ;int /*<<< orphan*/  (* set_clamp_cfg ) (struct vfe_device*) ;int /*<<< orphan*/  (* set_crop_cfg ) (struct vfe_device*,struct vfe_line*) ;int /*<<< orphan*/  (* set_scale_cfg ) (struct vfe_device*,struct vfe_line*) ;int /*<<< orphan*/  (* set_demux_cfg ) (struct vfe_device*,struct vfe_line*) ;int /*<<< orphan*/  (* set_xbar_cfg ) (struct vfe_device*,struct vfe_output*,int) ;int /*<<< orphan*/  (* set_realign_cfg ) (struct vfe_device*,struct vfe_line*,int) ;int /*<<< orphan*/  (* set_camif_cfg ) (struct vfe_device*,struct vfe_line*) ;int /*<<< orphan*/  (* set_module_cfg ) (struct vfe_device*,int) ;int /*<<< orphan*/  (* enable_irq_pix_line ) (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* bus_reload_wm ) (struct vfe_device*,int) ;int /*<<< orphan*/  (* wm_enable ) (struct vfe_device*,int,int) ;int /*<<< orphan*/  (* wm_line_based ) (struct vfe_device*,int,int /*<<< orphan*/ *,unsigned int,int) ;int /*<<< orphan*/  (* wm_set_ub_cfg ) (struct vfe_device*,int,int,int) ;int /*<<< orphan*/  (* wm_set_subsample ) (struct vfe_device*,int) ;int /*<<< orphan*/  (* set_cgc_override ) (struct vfe_device*,int,int) ;int /*<<< orphan*/  (* wm_frame_based ) (struct vfe_device*,int,int) ;int /*<<< orphan*/  (* set_rdi_cid ) (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* bus_connect_wm_to_rdi ) (struct vfe_device*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* enable_irq_wm_line ) (struct vfe_device*,int,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* reg_update_clear ) (struct vfe_device*,int /*<<< orphan*/ ) ;} ;
struct vfe_device {int /*<<< orphan*/  output_lock; TYPE_5__* camss; int /*<<< orphan*/  id; struct vfe_hw_ops* ops; } ;
struct v4l2_subdev {int dummy; } ;
struct media_entity {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int VFE_FRAME_DROP_VAL ; 
 int /*<<< orphan*/  VFE_LINE_PIX ; 
#define  VFE_OUTPUT_CONTINUOUS 129 
 int VFE_OUTPUT_IDLE ; 
 int VFE_OUTPUT_RESERVED ; 
#define  VFE_OUTPUT_SINGLE 128 
 struct media_entity* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_skip_frames ; 
 struct v4l2_subdev* FUNC2 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vfe_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vfe_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vfe_device*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vfe_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vfe_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vfe_device*,int,int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vfe_device*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vfe_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct vfe_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct vfe_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct vfe_device*,struct vfe_line*) ; 
 int /*<<< orphan*/  FUNC19 (struct vfe_device*,struct vfe_line*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct vfe_device*,struct vfe_output*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct vfe_device*,struct vfe_line*) ; 
 int /*<<< orphan*/  FUNC22 (struct vfe_device*,struct vfe_line*) ; 
 int /*<<< orphan*/  FUNC23 (struct vfe_device*,struct vfe_line*) ; 
 int /*<<< orphan*/  FUNC24 (struct vfe_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct vfe_device*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct vfe_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct vfe_device*,int,int) ; 
 int /*<<< orphan*/  FUNC28 (struct vfe_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (struct vfe_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct vfe_device*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct vfe_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC33 (struct vfe_device*,int,int) ; 
 struct vfe_device* FUNC34 (struct vfe_line*) ; 
 int /*<<< orphan*/  FUNC35 (struct v4l2_subdev*,struct media_entity*,int /*<<< orphan*/ ,unsigned int*) ; 
 void* FUNC36 (struct vfe_output*) ; 
 int /*<<< orphan*/  FUNC37 (struct vfe_device*,struct vfe_output*,int) ; 
 int /*<<< orphan*/  FUNC38 (struct vfe_device*,struct vfe_output*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC39(struct vfe_line *line)
{
	struct vfe_device *vfe = FUNC34(line);
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

	sensor = FUNC0(&line->subdev.entity);
	if (sensor) {
		struct v4l2_subdev *subdev =
					FUNC2(sensor);

		FUNC35(subdev, sensor, g_skip_frames, &frame_skip);
		/* Max frame skip is 29 frames */
		if (frame_skip > VFE_FRAME_DROP_VAL - 1)
			frame_skip = VFE_FRAME_DROP_VAL - 1;
	}

	FUNC4(&vfe->output_lock, flags);

	ops->reg_update_clear(vfe, line->id);

	if (output->state != VFE_OUTPUT_RESERVED) {
		FUNC1(vfe->camss->dev, "Output is not in reserved state %d\n",
			output->state);
		FUNC5(&vfe->output_lock, flags);
		return -EINVAL;
	}
	output->state = VFE_OUTPUT_IDLE;

	output->buf[0] = FUNC36(output);
	output->buf[1] = FUNC36(output);

	if (!output->buf[0] && output->buf[1]) {
		output->buf[0] = output->buf[1];
		output->buf[1] = NULL;
	}

	if (output->buf[0])
		output->state = VFE_OUTPUT_SINGLE;

	if (output->buf[1])
		output->state = VFE_OUTPUT_CONTINUOUS;

	switch (output->state) {
	case VFE_OUTPUT_SINGLE:
		FUNC37(vfe, output, 1 << frame_skip);
		break;
	case VFE_OUTPUT_CONTINUOUS:
		FUNC37(vfe, output, 3 << frame_skip);
		break;
	default:
		FUNC37(vfe, output, 0);
		break;
	}

	output->sequence = 0;
	output->wait_sof = 0;
	output->wait_reg_update = 0;
	FUNC3(&output->sof);
	FUNC3(&output->reg_update);

	FUNC38(vfe, output, 0);

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

	FUNC5(&vfe->output_lock, flags);

	return 0;
}