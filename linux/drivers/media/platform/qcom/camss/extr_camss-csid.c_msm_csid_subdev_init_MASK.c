#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct resources {int /*<<< orphan*/ * regulator; scalar_t__** clock_rate; int /*<<< orphan*/ * clock; int /*<<< orphan*/ * interrupt; int /*<<< orphan*/ * reg; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct csid_device {size_t nclocks; int /*<<< orphan*/  reset_complete; int /*<<< orphan*/  vdda; struct camss_clock* clock; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_name; int /*<<< orphan*/  id; int /*<<< orphan*/  base; void* nformats; void* formats; struct camss* camss; } ;
struct camss_clock {size_t nfreqs; scalar_t__* freq; int /*<<< orphan*/  name; int /*<<< orphan*/  clk; } ;
struct camss {scalar_t__ version; struct device* dev; } ;

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
 char* MSM_CSID_NAME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* csid_formats_8x16 ; 
 void* csid_formats_8x96 ; 
 int /*<<< orphan*/  csid_isr ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 char* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 void* FUNC7 (struct device*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct csid_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*,char*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC14 (struct device*) ; 

int FUNC15(struct camss *camss, struct csid_device *csid,
			 const struct resources *res, u8 id)
{
	struct device *dev = camss->dev;
	struct platform_device *pdev = FUNC14(dev);
	struct resource *r;
	int i, j;
	int ret;

	csid->camss = camss;
	csid->id = id;

	if (camss->version == CAMSS_8x16) {
		csid->formats = csid_formats_8x16;
		csid->nformats =
				FUNC0(csid_formats_8x16);
	} else if (camss->version == CAMSS_8x96) {
		csid->formats = csid_formats_8x96;
		csid->nformats =
				FUNC0(csid_formats_8x96);
	} else {
		return -EINVAL;
	}

	/* Memory */

	r = FUNC12(pdev, IORESOURCE_MEM, res->reg[0]);
	csid->base = FUNC6(dev, r);
	if (FUNC1(csid->base)) {
		FUNC3(dev, "could not map memory\n");
		return FUNC2(csid->base);
	}

	/* Interrupt */

	r = FUNC12(pdev, IORESOURCE_IRQ,
					 res->interrupt[0]);
	if (!r) {
		FUNC3(dev, "missing IRQ\n");
		return -EINVAL;
	}

	csid->irq = r->start;
	FUNC13(csid->irq_name, sizeof(csid->irq_name), "%s_%s%d",
		 FUNC4(dev), MSM_CSID_NAME, csid->id);
	ret = FUNC9(dev, csid->irq, csid_isr,
		IRQF_TRIGGER_RISING, csid->irq_name, csid);
	if (ret < 0) {
		FUNC3(dev, "request_irq failed: %d\n", ret);
		return ret;
	}

	FUNC10(csid->irq);

	/* Clocks */

	csid->nclocks = 0;
	while (res->clock[csid->nclocks])
		csid->nclocks++;

	csid->clock = FUNC7(dev, csid->nclocks, sizeof(*csid->clock),
				    GFP_KERNEL);
	if (!csid->clock)
		return -ENOMEM;

	for (i = 0; i < csid->nclocks; i++) {
		struct camss_clock *clock = &csid->clock[i];

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

	/* Regulator */

	csid->vdda = FUNC8(dev, res->regulator[0]);
	if (FUNC1(csid->vdda)) {
		FUNC3(dev, "could not get regulator\n");
		return FUNC2(csid->vdda);
	}

	FUNC11(&csid->reset_complete);

	return 0;
}