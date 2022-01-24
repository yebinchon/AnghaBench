#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vfe_output {int wait_sof; unsigned int wm_num; int wait_reg_update; int /*<<< orphan*/ * wm_idx; int /*<<< orphan*/  reg_update; int /*<<< orphan*/  sof; } ;
struct vfe_line {int /*<<< orphan*/  id; struct vfe_output output; } ;
struct vfe_hw_ops {int /*<<< orphan*/  (* camif_wait_for_stop ) (struct vfe_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_camif_cmd ) (struct vfe_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_xbar_cfg ) (struct vfe_device*,struct vfe_output*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_realign_cfg ) (struct vfe_device*,struct vfe_line*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_module_cfg ) (struct vfe_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* enable_irq_pix_line ) (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_cgc_override ) (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* wm_line_based ) (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* enable_irq_wm_line ) (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* bus_disconnect_wm_from_rdi ) (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* wm_frame_based ) (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reg_update ) (struct vfe_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* wm_enable ) (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct vfe_device {TYPE_1__* camss; int /*<<< orphan*/  output_lock; struct vfe_hw_ops* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFE_LINE_PIX ; 
 int /*<<< orphan*/  VFE_NEXT_SOF_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vfe_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vfe_device*,struct vfe_line*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vfe_device*,struct vfe_output*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vfe_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vfe_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vfe_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vfe_device* FUNC18 (struct vfe_line*) ; 
 unsigned long FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct vfe_line *line)
{
	struct vfe_device *vfe = FUNC18(line);
	struct vfe_output *output = &line->output;
	const struct vfe_hw_ops *ops = vfe->ops;
	unsigned long flags;
	unsigned long time;
	unsigned int i;

	FUNC2(&vfe->output_lock, flags);

	output->wait_sof = 1;
	FUNC3(&vfe->output_lock, flags);

	time = FUNC19(&output->sof,
					   FUNC1(VFE_NEXT_SOF_MS));
	if (!time)
		FUNC0(vfe->camss->dev, "VFE sof timeout\n");

	FUNC2(&vfe->output_lock, flags);
	for (i = 0; i < output->wm_num; i++)
		ops->wm_enable(vfe, output->wm_idx[i], 0);

	ops->reg_update(vfe, line->id);
	output->wait_reg_update = 1;
	FUNC3(&vfe->output_lock, flags);

	time = FUNC19(&output->reg_update,
					   FUNC1(VFE_NEXT_SOF_MS));
	if (!time)
		FUNC0(vfe->camss->dev, "VFE reg update timeout\n");

	FUNC2(&vfe->output_lock, flags);

	if (line->id != VFE_LINE_PIX) {
		ops->wm_frame_based(vfe, output->wm_idx[0], 0);
		ops->bus_disconnect_wm_from_rdi(vfe, output->wm_idx[0],
						line->id);
		ops->enable_irq_wm_line(vfe, output->wm_idx[0], line->id, 0);
		ops->set_cgc_override(vfe, output->wm_idx[0], 0);
		FUNC3(&vfe->output_lock, flags);
	} else {
		for (i = 0; i < output->wm_num; i++) {
			ops->wm_line_based(vfe, output->wm_idx[i], NULL, i, 0);
			ops->set_cgc_override(vfe, output->wm_idx[i], 0);
		}

		ops->enable_irq_pix_line(vfe, 0, line->id, 0);
		ops->set_module_cfg(vfe, 0);
		ops->set_realign_cfg(vfe, line, 0);
		ops->set_xbar_cfg(vfe, output, 0);

		ops->set_camif_cmd(vfe, 0);
		FUNC3(&vfe->output_lock, flags);

		ops->camif_wait_for_stop(vfe, vfe->camss->dev);
	}

	return 0;
}