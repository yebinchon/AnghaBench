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
struct saa7134_dev {struct saa7134_card_ir* remote; } ;
struct saa7134_card_ir {int mask_keydown; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7134_GPIO_GPMODE3 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPRESCAN ; 
 int SAA7134_GPIO_GPSTATUS0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct saa7134_dev *dev)
{
	struct saa7134_card_ir *ir = dev->remote;
	int space;

	/* Generate initial event */
	FUNC1(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	FUNC3(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	space = FUNC2(SAA7134_GPIO_GPSTATUS0 >> 2) & ir->mask_keydown;
	FUNC0(dev->remote->dev, !space);

	return 1;
}