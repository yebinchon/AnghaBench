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
typedef  int u8 ;
struct ene_device {scalar_t__ hw_revision; int irq; int /*<<< orphan*/  rdev; int /*<<< orphan*/  rx_fan_input_inuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENEB_IRQ ; 
 int /*<<< orphan*/  ENEB_IRQ_UNK1 ; 
 int /*<<< orphan*/  ENE_FW1 ; 
 int ENE_FW1_ENABLE ; 
 int ENE_FW1_IRQ ; 
 scalar_t__ ENE_HW_C ; 
 int /*<<< orphan*/  ENE_IRQ ; 
 int ENE_IRQ_MASK ; 
 int ENE_IRQ_STATUS ; 
 int ENE_IRQ_UNK_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ene_device*) ; 
 int FUNC1 (struct ene_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ene_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ene_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ene_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ene_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ene_device *dev)
{
	u8 reg_value;

	/* Enable system interrupt */
	if (dev->hw_revision < ENE_HW_C) {
		FUNC5(dev, ENEB_IRQ, dev->irq << 1);
		FUNC5(dev, ENEB_IRQ_UNK1, 0x01);
	} else {
		reg_value = FUNC1(dev, ENE_IRQ) & 0xF0;
		reg_value |= ENE_IRQ_UNK_EN;
		reg_value &= ~ENE_IRQ_STATUS;
		reg_value |= (dev->irq & ENE_IRQ_MASK);
		FUNC5(dev, ENE_IRQ, reg_value);
	}

	/* Enable inputs */
	FUNC3(dev, dev->rx_fan_input_inuse);
	FUNC2(dev, !dev->rx_fan_input_inuse);

	/* ack any pending irqs - just in case */
	FUNC0(dev);

	/* enable firmware bits */
	FUNC4(dev, ENE_FW1, ENE_FW1_ENABLE | ENE_FW1_IRQ);

	/* enter idle mode */
	FUNC6(dev->rdev, true);
}