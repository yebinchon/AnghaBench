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
struct TYPE_4__ {scalar_t__ tuner_sif_gpio; TYPE_1__* tuner_gpio; int /*<<< orphan*/  name; } ;
struct cx231xx {scalar_t__ model; TYPE_2__ board; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX231XX_ANALOG_MODE ; 
 scalar_t__ CX231XX_BOARD_ASTROMETA_T2HYBRID ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(struct cx231xx *dev)
{
	FUNC3(dev->dev, "Identified as %s (card=%d)\n",
		dev->board.name, dev->model);

	if (CX231XX_BOARD_ASTROMETA_T2HYBRID == dev->model) {
		/* turn on demodulator chip */
		FUNC1(dev, 0x03, 0x01);
	}

	/* set the direction for GPIO pins */
	if (dev->board.tuner_gpio) {
		FUNC0(dev, dev->board.tuner_gpio->bit, 1);
		FUNC1(dev, dev->board.tuner_gpio->bit, 1);
	}
	if (dev->board.tuner_sif_gpio >= 0)
		FUNC0(dev, dev->board.tuner_sif_gpio, 1);

	/* request some modules if any required */

	/* set the mode to Analog mode initially */
	FUNC2(dev, CX231XX_ANALOG_MODE);

	/* Unlock device */
	/* cx231xx_set_mode(dev, CX231XX_SUSPEND); */

}