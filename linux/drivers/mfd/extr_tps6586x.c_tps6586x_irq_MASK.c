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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u32 ;
struct tps6586x {int irq_en; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  acks ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  TPS6586X_INT_ACK1 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct tps6586x *tps6586x = data;
	u32 acks;
	int ret = 0;

	ret = FUNC5(tps6586x->dev, TPS6586X_INT_ACK1,
			     sizeof(acks), (uint8_t *)&acks);

	if (ret < 0) {
		FUNC1(tps6586x->dev, "failed to read interrupt status\n");
		return IRQ_NONE;
	}

	acks = FUNC4(acks);

	while (acks) {
		int i = FUNC0(acks);

		if (tps6586x->irq_en & (1 << i))
			FUNC2(
				FUNC3(tps6586x->irq_domain, i));

		acks &= ~(1 << i);
	}

	return IRQ_HANDLED;
}