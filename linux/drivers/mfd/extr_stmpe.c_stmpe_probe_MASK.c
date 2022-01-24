#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct stmpe_platform_data {int irq_trigger; int /*<<< orphan*/  irq_gpio; scalar_t__ irq_over_gpio; } ;
struct stmpe_client_info {int irq; TYPE_3__* dev; int /*<<< orphan*/  (* init ) (struct stmpe*) ;int /*<<< orphan*/  client; } ;
struct stmpe {int partnum; int irq; TYPE_3__* dev; TYPE_1__* variant; void* vio; void* vcc; int /*<<< orphan*/  num_gpios; int /*<<< orphan*/  regs; struct stmpe_client_info* ci; struct stmpe_platform_data* pdata; int /*<<< orphan*/  client; void* adc_freq; void* ref_sel; void* mod_12b; void* sample_time; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_lock; } ;
struct device_node {int dummy; } ;
typedef  enum stmpe_partnum { ____Placeholder_stmpe_partnum } stmpe_partnum ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; int /*<<< orphan*/  num_gpios; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_DIR_IN ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_NONE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct stmpe*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_3__*,char*) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct stmpe*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,char*,void**) ; 
 int FUNC15 (void*) ; 
 int FUNC16 (struct stmpe*) ; 
 int FUNC17 (struct stmpe*) ; 
 int /*<<< orphan*/  stmpe_irq ; 
 int FUNC18 (struct stmpe*,struct device_node*) ; 
 TYPE_1__** stmpe_noirq_variant_info ; 
 int /*<<< orphan*/  FUNC19 (struct stmpe_platform_data*,struct device_node*) ; 
 TYPE_1__** stmpe_variant_info ; 
 int /*<<< orphan*/  FUNC20 (struct stmpe*) ; 

int FUNC21(struct stmpe_client_info *ci, enum stmpe_partnum partnum)
{
	struct stmpe_platform_data *pdata;
	struct device_node *np = ci->dev->of_node;
	struct stmpe *stmpe;
	int ret;
	u32 val;

	pdata = FUNC6(ci->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	FUNC19(pdata, np);

	if (FUNC13(np, "interrupts", NULL) == NULL)
		ci->irq = -1;

	stmpe = FUNC6(ci->dev, sizeof(struct stmpe), GFP_KERNEL);
	if (!stmpe)
		return -ENOMEM;

	FUNC12(&stmpe->irq_lock);
	FUNC12(&stmpe->lock);

	if (!FUNC14(np, "st,sample-time", &val))
		stmpe->sample_time = val;
	if (!FUNC14(np, "st,mod-12b", &val))
		stmpe->mod_12b = val;
	if (!FUNC14(np, "st,ref-sel", &val))
		stmpe->ref_sel = val;
	if (!FUNC14(np, "st,adc-freq", &val))
		stmpe->adc_freq = val;

	stmpe->dev = ci->dev;
	stmpe->client = ci->client;
	stmpe->pdata = pdata;
	stmpe->ci = ci;
	stmpe->partnum = partnum;
	stmpe->variant = stmpe_variant_info[partnum];
	stmpe->regs = stmpe->variant->regs;
	stmpe->num_gpios = stmpe->variant->num_gpios;
	stmpe->vcc = FUNC7(ci->dev, "vcc");
	if (!FUNC0(stmpe->vcc)) {
		ret = FUNC15(stmpe->vcc);
		if (ret)
			FUNC4(ci->dev, "failed to enable VCC supply\n");
	}
	stmpe->vio = FUNC7(ci->dev, "vio");
	if (!FUNC0(stmpe->vio)) {
		ret = FUNC15(stmpe->vio);
		if (ret)
			FUNC4(ci->dev, "failed to enable VIO supply\n");
	}
	FUNC3(stmpe->dev, stmpe);

	if (ci->init)
		ci->init(stmpe);

	if (pdata->irq_over_gpio) {
		ret = FUNC5(ci->dev, pdata->irq_gpio,
				GPIOF_DIR_IN, "stmpe");
		if (ret) {
			FUNC1(stmpe->dev, "failed to request IRQ GPIO: %d\n",
					ret);
			return ret;
		}

		stmpe->irq = FUNC9(pdata->irq_gpio);
	} else {
		stmpe->irq = ci->irq;
	}

	if (stmpe->irq < 0) {
		/* use alternate variant info for no-irq mode, if supported */
		FUNC2(stmpe->dev,
			"%s configured in no-irq mode by platform data\n",
			stmpe->variant->name);
		if (!stmpe_noirq_variant_info[stmpe->partnum]) {
			FUNC1(stmpe->dev,
				"%s does not support no-irq mode!\n",
				stmpe->variant->name);
			return -ENODEV;
		}
		stmpe->variant = stmpe_noirq_variant_info[stmpe->partnum];
	} else if (pdata->irq_trigger == IRQF_TRIGGER_NONE) {
		pdata->irq_trigger = FUNC10(stmpe->irq);
	}

	ret = FUNC16(stmpe);
	if (ret)
		return ret;

	if (stmpe->irq >= 0) {
		ret = FUNC18(stmpe, np);
		if (ret)
			return ret;

		ret = FUNC8(ci->dev, stmpe->irq, NULL,
				stmpe_irq, pdata->irq_trigger | IRQF_ONESHOT,
				"stmpe", stmpe);
		if (ret) {
			FUNC1(stmpe->dev, "failed to request IRQ: %d\n",
					ret);
			return ret;
		}
	}

	ret = FUNC17(stmpe);
	if (!ret)
		return 0;

	FUNC1(stmpe->dev, "failed to add children\n");
	FUNC11(stmpe->dev);

	return ret;
}