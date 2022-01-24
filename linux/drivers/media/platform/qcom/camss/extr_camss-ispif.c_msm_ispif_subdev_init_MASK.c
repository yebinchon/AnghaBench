#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resources_ispif {int /*<<< orphan*/ * clock_for_reset; int /*<<< orphan*/ * clock; int /*<<< orphan*/  interrupt; int /*<<< orphan*/ * reg; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct ispif_device {int line_num; size_t nclocks; size_t nclocks_for_reset; int /*<<< orphan*/  reset_complete; int /*<<< orphan*/  config_lock; scalar_t__ power_count; int /*<<< orphan*/  power_lock; struct camss_clock* clock_for_reset; struct camss_clock* clock; int /*<<< orphan*/  irq_name; int /*<<< orphan*/  irq; void* base_clk_mux; void* base; TYPE_1__* line; } ;
struct device {int dummy; } ;
struct camss_clock {scalar_t__ nfreqs; int /*<<< orphan*/ * freq; void* clk; } ;
struct TYPE_4__ {scalar_t__ version; } ;
struct TYPE_3__ {int id; void* nformats; void* formats; struct ispif_device* ispif; } ;

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
 scalar_t__ FUNC1 (void*) ; 
 char* MSM_ISPIF_NAME ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 char* FUNC4 (struct device*) ; 
 void* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 void* FUNC7 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ispif_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* ispif_formats_8x16 ; 
 void* ispif_formats_8x96 ; 
 int /*<<< orphan*/  ispif_isr_8x16 ; 
 int /*<<< orphan*/  ispif_isr_8x96 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 TYPE_2__* FUNC13 (struct ispif_device*) ; 
 struct device* FUNC14 (struct ispif_device*) ; 
 struct platform_device* FUNC15 (struct device*) ; 

int FUNC16(struct ispif_device *ispif,
			  const struct resources_ispif *res)
{
	struct device *dev = FUNC14(ispif);
	struct platform_device *pdev = FUNC15(dev);
	struct resource *r;
	int i;
	int ret;

	/* Number of ISPIF lines - same as number of CSID hardware modules */
	if (FUNC13(ispif)->version == CAMSS_8x16)
		ispif->line_num = 2;
	else if (FUNC13(ispif)->version == CAMSS_8x96)
		ispif->line_num = 4;
	else
		return -EINVAL;

	ispif->line = FUNC7(dev, ispif->line_num, sizeof(*ispif->line),
				   GFP_KERNEL);
	if (!ispif->line)
		return -ENOMEM;

	for (i = 0; i < ispif->line_num; i++) {
		ispif->line[i].ispif = ispif;
		ispif->line[i].id = i;

		if (FUNC13(ispif)->version == CAMSS_8x16) {
			ispif->line[i].formats = ispif_formats_8x16;
			ispif->line[i].nformats =
					FUNC0(ispif_formats_8x16);
		} else if (FUNC13(ispif)->version == CAMSS_8x96) {
			ispif->line[i].formats = ispif_formats_8x96;
			ispif->line[i].nformats =
					FUNC0(ispif_formats_8x96);
		} else {
			return -EINVAL;
		}
	}

	/* Memory */

	r = FUNC11(pdev, IORESOURCE_MEM, res->reg[0]);
	ispif->base = FUNC6(dev, r);
	if (FUNC1(ispif->base)) {
		FUNC3(dev, "could not map memory\n");
		return FUNC2(ispif->base);
	}

	r = FUNC11(pdev, IORESOURCE_MEM, res->reg[1]);
	ispif->base_clk_mux = FUNC6(dev, r);
	if (FUNC1(ispif->base_clk_mux)) {
		FUNC3(dev, "could not map memory\n");
		return FUNC2(ispif->base_clk_mux);
	}

	/* Interrupt */

	r = FUNC11(pdev, IORESOURCE_IRQ, res->interrupt);

	if (!r) {
		FUNC3(dev, "missing IRQ\n");
		return -EINVAL;
	}

	ispif->irq = r->start;
	FUNC12(ispif->irq_name, sizeof(ispif->irq_name), "%s_%s",
		 FUNC4(dev), MSM_ISPIF_NAME);
	if (FUNC13(ispif)->version == CAMSS_8x16)
		ret = FUNC8(dev, ispif->irq, ispif_isr_8x16,
			       IRQF_TRIGGER_RISING, ispif->irq_name, ispif);
	else if (FUNC13(ispif)->version == CAMSS_8x96)
		ret = FUNC8(dev, ispif->irq, ispif_isr_8x96,
			       IRQF_TRIGGER_RISING, ispif->irq_name, ispif);
	else
		ret = -EINVAL;
	if (ret < 0) {
		FUNC3(dev, "request_irq failed: %d\n", ret);
		return ret;
	}

	/* Clocks */

	ispif->nclocks = 0;
	while (res->clock[ispif->nclocks])
		ispif->nclocks++;

	ispif->clock = FUNC7(dev,
				    ispif->nclocks, sizeof(*ispif->clock),
				    GFP_KERNEL);
	if (!ispif->clock)
		return -ENOMEM;

	for (i = 0; i < ispif->nclocks; i++) {
		struct camss_clock *clock = &ispif->clock[i];

		clock->clk = FUNC5(dev, res->clock[i]);
		if (FUNC1(clock->clk))
			return FUNC2(clock->clk);

		clock->freq = NULL;
		clock->nfreqs = 0;
	}

	ispif->nclocks_for_reset = 0;
	while (res->clock_for_reset[ispif->nclocks_for_reset])
		ispif->nclocks_for_reset++;

	ispif->clock_for_reset = FUNC7(dev,
					      ispif->nclocks_for_reset,
					      sizeof(*ispif->clock_for_reset),
					      GFP_KERNEL);
	if (!ispif->clock_for_reset)
		return -ENOMEM;

	for (i = 0; i < ispif->nclocks_for_reset; i++) {
		struct camss_clock *clock = &ispif->clock_for_reset[i];

		clock->clk = FUNC5(dev, res->clock_for_reset[i]);
		if (FUNC1(clock->clk))
			return FUNC2(clock->clk);

		clock->freq = NULL;
		clock->nfreqs = 0;
	}

	FUNC10(&ispif->power_lock);
	ispif->power_count = 0;

	FUNC10(&ispif->config_lock);

	FUNC9(&ispif->reset_complete);

	return 0;
}