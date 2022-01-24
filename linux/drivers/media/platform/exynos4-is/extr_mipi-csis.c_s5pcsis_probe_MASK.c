#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct csis_drvdata* data; } ;
struct TYPE_13__ {int /*<<< orphan*/  function; } ;
struct TYPE_11__ {TYPE_6__ entity; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct TYPE_10__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  code; } ;
struct csis_state {scalar_t__ num_lanes; scalar_t__ max_num_lanes; scalar_t__ irq; int index; int /*<<< orphan*/ * clock; TYPE_2__ sd; scalar_t__ clk_frequency; int /*<<< orphan*/  wclk_ext; int /*<<< orphan*/  hs_settle; int /*<<< orphan*/  events; TYPE_7__* pads; TYPE_1__ format; TYPE_4__* csis_fmt; TYPE_9__* supplies; int /*<<< orphan*/  regs; int /*<<< orphan*/  phy; int /*<<< orphan*/  interrupt_mask; struct platform_device* pdev; int /*<<< orphan*/  slock; int /*<<< orphan*/  lock; } ;
struct csis_drvdata {int /*<<< orphan*/  interrupt_mask; } ;
struct TYPE_15__ {int /*<<< orphan*/  supply; } ;
struct TYPE_14__ {int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 size_t CSIS_CLK_MUX ; 
 int CSIS_NUM_SUPPLIES ; 
 int /*<<< orphan*/  CSIS_PADS_NUM ; 
 size_t CSIS_PAD_SINK ; 
 size_t CSIS_PAD_SOURCE ; 
 char* CSIS_SUBDEV_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_IO_V4L ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S5PCSIS_DEF_PIX_HEIGHT ; 
 int /*<<< orphan*/  S5PCSIS_DEF_PIX_WIDTH ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * csis_supply_name ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct resource*) ; 
 struct csis_state* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int FUNC13 (struct device*,int,TYPE_9__*) ; 
 int FUNC14 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct csis_state*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*) ; 
 int FUNC16 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int FUNC25 (struct csis_state*) ; 
 int /*<<< orphan*/  FUNC26 (struct csis_state*) ; 
 int /*<<< orphan*/  s5pcsis_events ; 
 TYPE_4__* s5pcsis_formats ; 
 int /*<<< orphan*/  s5pcsis_irq_handler ; 
 int /*<<< orphan*/  s5pcsis_of_match ; 
 int FUNC27 (struct platform_device*,struct csis_state*) ; 
 int FUNC28 (struct device*,int) ; 
 int /*<<< orphan*/  s5pcsis_subdev_ops ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC33(struct platform_device *pdev)
{
	const struct of_device_id *of_id;
	const struct csis_drvdata *drv_data;
	struct device *dev = &pdev->dev;
	struct resource *mem_res;
	struct csis_state *state;
	int ret = -ENOMEM;
	int i;

	state = FUNC11(dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	FUNC18(&state->lock);
	FUNC30(&state->slock);
	state->pdev = pdev;

	of_id = FUNC19(s5pcsis_of_match, dev->of_node);
	if (FUNC2(of_id == NULL))
		return -EINVAL;

	drv_data = of_id->data;
	state->interrupt_mask = drv_data->interrupt_mask;

	ret = FUNC27(pdev, state);
	if (ret < 0)
		return ret;

	if (state->num_lanes == 0 || state->num_lanes > state->max_num_lanes) {
		FUNC7(dev, "Unsupported number of data lanes: %d (max. %d)\n",
			state->num_lanes, state->max_num_lanes);
		return -EINVAL;
	}

	state->phy = FUNC12(dev, "csis");
	if (FUNC0(state->phy))
		return FUNC1(state->phy);

	mem_res = FUNC21(pdev, IORESOURCE_MEM, 0);
	state->regs = FUNC10(dev, mem_res);
	if (FUNC0(state->regs))
		return FUNC1(state->regs);

	state->irq = FUNC20(pdev, 0);
	if (state->irq < 0)
		return state->irq;

	for (i = 0; i < CSIS_NUM_SUPPLIES; i++)
		state->supplies[i].supply = csis_supply_name[i];

	ret = FUNC13(dev, CSIS_NUM_SUPPLIES,
				 state->supplies);
	if (ret)
		return ret;

	ret = FUNC25(state);
	if (ret < 0)
		return ret;

	if (state->clk_frequency)
		ret = FUNC5(state->clock[CSIS_CLK_MUX],
				   state->clk_frequency);
	else
		FUNC6(dev, "No clock frequency specified!\n");
	if (ret < 0)
		goto e_clkput;

	ret = FUNC4(state->clock[CSIS_CLK_MUX]);
	if (ret < 0)
		goto e_clkput;

	ret = FUNC14(dev, state->irq, s5pcsis_irq_handler,
			       0, FUNC9(dev), state);
	if (ret) {
		FUNC7(dev, "Interrupt request failed\n");
		goto e_clkdis;
	}

	FUNC32(&state->sd, &s5pcsis_subdev_ops);
	state->sd.owner = THIS_MODULE;
	FUNC29(state->sd.name, sizeof(state->sd.name), "%s.%d",
		 CSIS_SUBDEV_NAME, state->index);
	state->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	state->csis_fmt = &s5pcsis_formats[0];

	state->format.code = s5pcsis_formats[0].code;
	state->format.width = S5PCSIS_DEF_PIX_WIDTH;
	state->format.height = S5PCSIS_DEF_PIX_HEIGHT;

	state->sd.entity.function = MEDIA_ENT_F_IO_V4L;
	state->pads[CSIS_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
	state->pads[CSIS_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
	ret = FUNC16(&state->sd.entity,
				CSIS_PADS_NUM, state->pads);
	if (ret < 0)
		goto e_clkdis;

	/* This allows to retrieve the platform device id by the host driver */
	FUNC31(&state->sd, pdev);

	/* .. and a pointer to the subdev. */
	FUNC22(pdev, &state->sd);
	FUNC17(state->events, s5pcsis_events, sizeof(state->events));

	FUNC23(dev);
	if (!FUNC24(dev)) {
		ret = FUNC28(dev, true);
		if (ret < 0)
			goto e_m_ent;
	}

	FUNC8(&pdev->dev, "lanes: %d, hs_settle: %d, wclk: %d, freq: %u\n",
		 state->num_lanes, state->hs_settle, state->wclk_ext,
		 state->clk_frequency);
	return 0;

e_m_ent:
	FUNC15(&state->sd.entity);
e_clkdis:
	FUNC3(state->clock[CSIS_CLK_MUX]);
e_clkput:
	FUNC26(state);
	return ret;
}