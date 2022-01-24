#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct realtek_smi {int num_ports; int /*<<< orphan*/  irqdomain; TYPE_1__* dev; int /*<<< orphan*/  map; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
#define  IRQF_TRIGGER_FALLING 131 
#define  IRQF_TRIGGER_HIGH 130 
#define  IRQF_TRIGGER_LOW 129 
#define  IRQF_TRIGGER_RISING 128 
 int /*<<< orphan*/  RTL8366RB_INTERRUPT_CONTROL_REG ; 
 int /*<<< orphan*/  RTL8366RB_INTERRUPT_POLARITY ; 
 int /*<<< orphan*/  RTL8366RB_INTERRUPT_STATUS_REG ; 
 int /*<<< orphan*/  RTL8366RB_NUM_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct realtek_smi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct realtek_smi*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtl8366rb_irq ; 
 int /*<<< orphan*/  rtl8366rb_irqdomain_ops ; 

__attribute__((used)) static int FUNC13(struct realtek_smi *smi)
{
	struct device_node *intc;
	unsigned long irq_trig;
	int irq;
	int ret;
	u32 val;
	int i;

	intc = FUNC8(smi->dev->of_node, "interrupt-controller");
	if (!intc) {
		FUNC0(smi->dev, "missing child interrupt-controller node\n");
		return -EINVAL;
	}
	/* RB8366RB IRQs cascade off this one */
	irq = FUNC9(intc, 0);
	if (irq <= 0) {
		FUNC0(smi->dev, "failed to get parent IRQ\n");
		ret = irq ? irq : -EINVAL;
		goto out_put_node;
	}

	/* This clears the IRQ status register */
	ret = FUNC11(smi->map, RTL8366RB_INTERRUPT_STATUS_REG,
			  &val);
	if (ret) {
		FUNC0(smi->dev, "can't read interrupt status\n");
		goto out_put_node;
	}

	/* Fetch IRQ edge information from the descriptor */
	irq_trig = FUNC7(FUNC5(irq));
	switch (irq_trig) {
	case IRQF_TRIGGER_RISING:
	case IRQF_TRIGGER_HIGH:
		FUNC1(smi->dev, "active high/rising IRQ\n");
		val = 0;
		break;
	case IRQF_TRIGGER_FALLING:
	case IRQF_TRIGGER_LOW:
		FUNC1(smi->dev, "active low/falling IRQ\n");
		val = RTL8366RB_INTERRUPT_POLARITY;
		break;
	}
	ret = FUNC12(smi->map, RTL8366RB_INTERRUPT_CONTROL_REG,
				 RTL8366RB_INTERRUPT_POLARITY,
				 val);
	if (ret) {
		FUNC0(smi->dev, "could not configure IRQ polarity\n");
		goto out_put_node;
	}

	ret = FUNC2(smi->dev, irq, NULL,
					rtl8366rb_irq, IRQF_ONESHOT,
					"RTL8366RB", smi);
	if (ret) {
		FUNC0(smi->dev, "unable to request irq: %d\n", ret);
		goto out_put_node;
	}
	smi->irqdomain = FUNC4(intc,
					       RTL8366RB_NUM_INTERRUPT,
					       &rtl8366rb_irqdomain_ops,
					       smi);
	if (!smi->irqdomain) {
		FUNC0(smi->dev, "failed to create IRQ domain\n");
		ret = -EINVAL;
		goto out_put_node;
	}
	for (i = 0; i < smi->num_ports; i++)
		FUNC6(FUNC3(smi->irqdomain, i), irq);

out_put_node:
	FUNC10(intc);
	return ret;
}