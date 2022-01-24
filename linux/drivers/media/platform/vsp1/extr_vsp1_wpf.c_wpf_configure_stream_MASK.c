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
typedef  int u32 ;
struct TYPE_10__ {unsigned int index; int /*<<< orphan*/  config; struct vsp1_device* vsp1; } ;
struct TYPE_6__ {scalar_t__ rotate; } ;
struct v4l2_pix_format_mplane {int num_planes; TYPE_2__* plane_fmt; } ;
struct vsp1_rwpf {int writeback; int outfmt; TYPE_5__ entity; TYPE_1__ flip; struct vsp1_format_info* fmtinfo; struct v4l2_pix_format_mplane format; } ;
struct vsp1_pipeline {int num_inputs; TYPE_4__* brx; struct vsp1_rwpf** inputs; int /*<<< orphan*/  lif; } ;
struct vsp1_format_info {int hwfmt; int swap; scalar_t__ swap_uv; scalar_t__ swap_yc; scalar_t__ alpha; } ;
struct vsp1_entity {int /*<<< orphan*/  subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct vsp1_device {TYPE_3__* info; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {unsigned int rpf_count; } ;
struct TYPE_7__ {int bytesperline; } ;

/* Variables and functions */
 int /*<<< orphan*/  RWPF_PAD_SINK ; 
 int /*<<< orphan*/  RWPF_PAD_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  VI6_DPR_WPF_FPORCH_FP_WPFN ; 
 int /*<<< orphan*/  VI6_WFP_IRQ_ENB_DFEE ; 
 int /*<<< orphan*/  VI6_WPF_DSTM_STRIDE_C ; 
 int /*<<< orphan*/  VI6_WPF_DSTM_STRIDE_Y ; 
 int /*<<< orphan*/  VI6_WPF_DSWAP ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int VI6_WPF_OUTFMT_CSC ; 
 int VI6_WPF_OUTFMT_PXA ; 
 int VI6_WPF_OUTFMT_ROT ; 
 int VI6_WPF_OUTFMT_SPUVS ; 
 int VI6_WPF_OUTFMT_SPYCS ; 
 int VI6_WPF_OUTFMT_WRFMT_SHIFT ; 
 int /*<<< orphan*/  VI6_WPF_ROT_CTRL ; 
 int VI6_WPF_ROT_CTRL_LMEM_WD_SHIFT ; 
 int VI6_WPF_ROT_CTRL_LN16 ; 
 int /*<<< orphan*/  VI6_WPF_SRCRPF ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int VI6_WPF_SRCRPF_VIRACT2_MST ; 
 int VI6_WPF_SRCRPF_VIRACT_MST ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  VI6_WPF_WRBCK_CTRL_WBMD ; 
 scalar_t__ VSP1_ENTITY_BRU ; 
 int /*<<< orphan*/  VSP1_HAS_WPF_HFLIP ; 
 struct vsp1_rwpf* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vsp1_dl_body*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct vsp1_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vsp1_rwpf*,struct vsp1_dl_body*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct vsp1_rwpf*,struct vsp1_dl_list*) ; 

__attribute__((used)) static void FUNC12(struct vsp1_entity *entity,
				 struct vsp1_pipeline *pipe,
				 struct vsp1_dl_list *dl,
				 struct vsp1_dl_body *dlb)
{
	struct vsp1_rwpf *wpf = FUNC6(&entity->subdev);
	struct vsp1_device *vsp1 = wpf->entity.vsp1;
	const struct v4l2_mbus_framefmt *source_format;
	const struct v4l2_mbus_framefmt *sink_format;
	unsigned int index = wpf->entity.index;
	unsigned int i;
	u32 outfmt = 0;
	u32 srcrpf = 0;
	int ret;

	sink_format = FUNC8(&wpf->entity,
						 wpf->entity.config,
						 RWPF_PAD_SINK);
	source_format = FUNC8(&wpf->entity,
						   wpf->entity.config,
						   RWPF_PAD_SOURCE);

	/* Format */
	if (!pipe->lif || wpf->writeback) {
		const struct v4l2_pix_format_mplane *format = &wpf->format;
		const struct vsp1_format_info *fmtinfo = wpf->fmtinfo;

		outfmt = fmtinfo->hwfmt << VI6_WPF_OUTFMT_WRFMT_SHIFT;

		if (wpf->flip.rotate)
			outfmt |= VI6_WPF_OUTFMT_ROT;

		if (fmtinfo->alpha)
			outfmt |= VI6_WPF_OUTFMT_PXA;
		if (fmtinfo->swap_yc)
			outfmt |= VI6_WPF_OUTFMT_SPYCS;
		if (fmtinfo->swap_uv)
			outfmt |= VI6_WPF_OUTFMT_SPUVS;

		/* Destination stride and byte swapping. */
		FUNC10(wpf, dlb, VI6_WPF_DSTM_STRIDE_Y,
			       format->plane_fmt[0].bytesperline);
		if (format->num_planes > 1)
			FUNC10(wpf, dlb, VI6_WPF_DSTM_STRIDE_C,
				       format->plane_fmt[1].bytesperline);

		FUNC10(wpf, dlb, VI6_WPF_DSWAP, fmtinfo->swap);

		if (FUNC9(vsp1, VSP1_HAS_WPF_HFLIP) && index == 0)
			FUNC10(wpf, dlb, VI6_WPF_ROT_CTRL,
				       VI6_WPF_ROT_CTRL_LN16 |
				       (256 << VI6_WPF_ROT_CTRL_LMEM_WD_SHIFT));
	}

	if (sink_format->code != source_format->code)
		outfmt |= VI6_WPF_OUTFMT_CSC;

	wpf->outfmt = outfmt;

	FUNC7(dlb, FUNC0(index),
			   VI6_DPR_WPF_FPORCH_FP_WPFN);

	/*
	 * Sources. If the pipeline has a single input and BRx is not used,
	 * configure it as the master layer. Otherwise configure all
	 * inputs as sub-layers and select the virtual RPF as the master
	 * layer.
	 */
	for (i = 0; i < vsp1->info->rpf_count; ++i) {
		struct vsp1_rwpf *input = pipe->inputs[i];

		if (!input)
			continue;

		srcrpf |= (!pipe->brx && pipe->num_inputs == 1)
			? FUNC3(input->entity.index)
			: FUNC4(input->entity.index);
	}

	if (pipe->brx)
		srcrpf |= pipe->brx->type == VSP1_ENTITY_BRU
			? VI6_WPF_SRCRPF_VIRACT_MST
			: VI6_WPF_SRCRPF_VIRACT2_MST;

	FUNC10(wpf, dlb, VI6_WPF_SRCRPF, srcrpf);

	/* Enable interrupts. */
	FUNC7(dlb, FUNC2(index), 0);
	FUNC7(dlb, FUNC1(index),
			   VI6_WFP_IRQ_ENB_DFEE);

	/*
	 * Configure writeback for display pipelines (the wpf writeback flag is
	 * never set for memory-to-memory pipelines). Start by adding a chained
	 * display list to disable writeback after a single frame, and process
	 * to enable writeback. If the display list allocation fails don't
	 * enable writeback as we wouldn't be able to safely disable it,
	 * resulting in possible memory corruption.
	 */
	if (wpf->writeback) {
		ret = FUNC11(wpf, dl);
		if (ret < 0)
			wpf->writeback = false;
	}

	FUNC7(dlb, FUNC5(index),
			   wpf->writeback ? VI6_WPF_WRBCK_CTRL_WBMD : 0);
}