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
typedef  int uint8_t ;
struct r852_device {int card_detected; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  R852_CARD_STA ; 
 int R852_CARD_STA_PRESENT ; 
 int FUNC0 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct r852_device *dev)
{
	unsigned long flags;
	uint8_t reg;

	FUNC1(&dev->irqlock, flags);
	reg = FUNC0(dev, R852_CARD_STA);
	dev->card_detected = !!(reg & R852_CARD_STA_PRESENT);
	FUNC2(&dev->irqlock, flags);
}