#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/  reg_update; int /*<<< orphan*/  sof; } ;
struct TYPE_6__ {struct camss* camss; int /*<<< orphan*/  type; } ;
struct vfe_line {int id; void* nformats; void* formats; TYPE_2__ output; TYPE_1__ video_out; } ;
struct TYPE_8__ {int /*<<< orphan*/  wm_done; int /*<<< orphan*/  comp_done; int /*<<< orphan*/  sof; int /*<<< orphan*/  reg_update; int /*<<< orphan*/  halt_ack; int /*<<< orphan*/  reset_ack; } ;
struct vfe_device {size_t nclocks; int /*<<< orphan*/  halt_complete; int /*<<< orphan*/  reset_complete; struct vfe_line* line; scalar_t__ reg_update; int /*<<< orphan*/  id; struct camss* camss; int /*<<< orphan*/  output_lock; scalar_t__ stream_count; int /*<<< orphan*/  stream_lock; scalar_t__ power_count; int /*<<< orphan*/  power_lock; struct camss_clock* clock; int /*<<< orphan*/  irq_name; TYPE_4__* ops; int /*<<< orphan*/  irq; int /*<<< orphan*/  base; TYPE_3__ isr_ops; } ;
struct resources {scalar_t__** clock_rate; int /*<<< orphan*/ * clock; int /*<<< orphan*/ * interrupt; int /*<<< orphan*/ * reg; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct camss_clock {size_t nfreqs; scalar_t__* freq; int /*<<< orphan*/  name; int /*<<< orphan*/  clk; } ;
struct camss {scalar_t__ version; struct device* dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  isr; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 scalar_t__ CAMSS_8x16 ; 
 scalar_t__ CAMSS_8x96 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* MSM_VFE_NAME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int VFE_LINE_PIX ; 
 int VFE_LINE_RDI0 ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 char* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 void* FUNC7 (struct device*,size_t,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfe_device*) ; 
 void* formats_pix_8x16 ; 
 void* formats_pix_8x96 ; 
 void* formats_rdi_8x16 ; 
 void* formats_rdi_8x96 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC14 (struct device*) ; 
 int /*<<< orphan*/  vfe_isr_comp_done ; 
 int /*<<< orphan*/  vfe_isr_halt_ack ; 
 int /*<<< orphan*/  vfe_isr_reg_update ; 
 int /*<<< orphan*/  vfe_isr_reset_ack ; 
 int /*<<< orphan*/  vfe_isr_sof ; 
 int /*<<< orphan*/  vfe_isr_wm_done ; 
 TYPE_4__ vfe_ops_4_1 ; 
 TYPE_4__ vfe_ops_4_7 ; 

int FUNC15(struct camss *camss, struct vfe_device *vfe,
			const struct resources *res, u8 id)
{
	struct device *dev = camss->dev;
	struct platform_device *pdev = FUNC14(dev);
	struct resource *r;
	int i, j;
	int ret;

	vfe->isr_ops.reset_ack = vfe_isr_reset_ack;
	vfe->isr_ops.halt_ack = vfe_isr_halt_ack;
	vfe->isr_ops.reg_update = vfe_isr_reg_update;
	vfe->isr_ops.sof = vfe_isr_sof;
	vfe->isr_ops.comp_done = vfe_isr_comp_done;
	vfe->isr_ops.wm_done = vfe_isr_wm_done;

	if (camss->version == CAMSS_8x16)
		vfe->ops = &vfe_ops_4_1;
	else if (camss->version == CAMSS_8x96)
		vfe->ops = &vfe_ops_4_7;
	else
		return -EINVAL;

	/* Memory */

	r = FUNC11(pdev, IORESOURCE_MEM, res->reg[0]);
	vfe->base = FUNC6(dev, r);
	if (FUNC1(vfe->base)) {
		FUNC3(dev, "could not map memory\n");
		return FUNC2(vfe->base);
	}

	/* Interrupt */

	r = FUNC11(pdev, IORESOURCE_IRQ,
					 res->interrupt[0]);
	if (!r) {
		FUNC3(dev, "missing IRQ\n");
		return -EINVAL;
	}

	vfe->irq = r->start;
	FUNC12(vfe->irq_name, sizeof(vfe->irq_name), "%s_%s%d",
		 FUNC4(dev), MSM_VFE_NAME, vfe->id);
	ret = FUNC8(dev, vfe->irq, vfe->ops->isr,
			       IRQF_TRIGGER_RISING, vfe->irq_name, vfe);
	if (ret < 0) {
		FUNC3(dev, "request_irq failed: %d\n", ret);
		return ret;
	}

	/* Clocks */

	vfe->nclocks = 0;
	while (res->clock[vfe->nclocks])
		vfe->nclocks++;

	vfe->clock = FUNC7(dev, vfe->nclocks, sizeof(*vfe->clock),
				  GFP_KERNEL);
	if (!vfe->clock)
		return -ENOMEM;

	for (i = 0; i < vfe->nclocks; i++) {
		struct camss_clock *clock = &vfe->clock[i];

		clock->clk = FUNC5(dev, res->clock[i]);
		if (FUNC1(clock->clk))
			return FUNC2(clock->clk);

		clock->name = res->clock[i];

		clock->nfreqs = 0;
		while (res->clock_rate[i][clock->nfreqs])
			clock->nfreqs++;

		if (!clock->nfreqs) {
			clock->freq = NULL;
			continue;
		}

		clock->freq = FUNC7(dev,
					   clock->nfreqs,
					   sizeof(*clock->freq),
					   GFP_KERNEL);
		if (!clock->freq)
			return -ENOMEM;

		for (j = 0; j < clock->nfreqs; j++)
			clock->freq[j] = res->clock_rate[i][j];
	}

	FUNC10(&vfe->power_lock);
	vfe->power_count = 0;

	FUNC10(&vfe->stream_lock);
	vfe->stream_count = 0;

	FUNC13(&vfe->output_lock);

	vfe->camss = camss;
	vfe->id = id;
	vfe->reg_update = 0;

	for (i = VFE_LINE_RDI0; i <= VFE_LINE_PIX; i++) {
		struct vfe_line *l = &vfe->line[i];

		l->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
		l->video_out.camss = camss;
		l->id = i;
		FUNC9(&l->output.sof);
		FUNC9(&l->output.reg_update);

		if (camss->version == CAMSS_8x16) {
			if (i == VFE_LINE_PIX) {
				l->formats = formats_pix_8x16;
				l->nformats = FUNC0(formats_pix_8x16);
			} else {
				l->formats = formats_rdi_8x16;
				l->nformats = FUNC0(formats_rdi_8x16);
			}
		} else if (camss->version == CAMSS_8x96) {
			if (i == VFE_LINE_PIX) {
				l->formats = formats_pix_8x96;
				l->nformats = FUNC0(formats_pix_8x96);
			} else {
				l->formats = formats_rdi_8x96;
				l->nformats = FUNC0(formats_rdi_8x96);
			}
		} else {
			return -EINVAL;
		}
	}

	FUNC9(&vfe->reset_complete);
	FUNC9(&vfe->halt_complete);

	return 0;
}