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
typedef  int u32 ;
struct bgmac {int int_mask; int /*<<< orphan*/  napi; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BGMAC_INT_STATUS ; 
 int BGMAC_IS_RX ; 
 int BGMAC_IS_TX0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*) ; 
 int FUNC1 (struct bgmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct bgmac* FUNC4 (void*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct bgmac *bgmac = FUNC4(dev_id);

	u32 int_status = FUNC1(bgmac, BGMAC_INT_STATUS);
	int_status &= bgmac->int_mask;

	if (!int_status)
		return IRQ_NONE;

	int_status &= ~(BGMAC_IS_TX0 | BGMAC_IS_RX);
	if (int_status)
		FUNC2(bgmac->dev, "Unknown IRQs: 0x%08X\n", int_status);

	/* Disable new interrupts until handling existing ones */
	FUNC0(bgmac);

	FUNC3(&bgmac->napi);

	return IRQ_HANDLED;
}