#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;
struct bttv {TYPE_1__ c; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_GPIO_DATA ; 
 int /*<<< orphan*/  BT848_GPIO_OUT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC4 (struct bttv *btv)
{
	uint32_t dataRead = 0;
	long watchdog_value = 0x0E;

	FUNC3("%d: Adlink RTV-24 initialisation in progress ...\n",
		btv->c.nr);

	FUNC1 (0x00c3feff, BT848_GPIO_OUT_EN);

	FUNC1 (0 + watchdog_value, BT848_GPIO_DATA);
	FUNC2 (1);
	FUNC1 (0x10 + watchdog_value, BT848_GPIO_DATA);
	FUNC2 (10);
	FUNC1 (0 + watchdog_value, BT848_GPIO_DATA);

	dataRead = FUNC0 (BT848_GPIO_DATA);

	if ((((dataRead >> 18) & 0x01) != 0) || (((dataRead >> 19) & 0x01) != 1)) {
		FUNC3("%d: Adlink RTV-24 initialisation(1) ERROR_CPLD_Check_Failed (read %d)\n",
			btv->c.nr, dataRead);
	}

	FUNC1 (0x4400 + watchdog_value, BT848_GPIO_DATA);
	FUNC2 (10);
	FUNC1 (0x4410 + watchdog_value, BT848_GPIO_DATA);
	FUNC2 (1);
	FUNC1 (watchdog_value, BT848_GPIO_DATA);
	FUNC2 (1);
	dataRead = FUNC0 (BT848_GPIO_DATA);

	if ((((dataRead >> 18) & 0x01) != 0) || (((dataRead >> 19) & 0x01) != 0)) {
		FUNC3("%d: Adlink RTV-24 initialisation(2) ERROR_CPLD_Check_Failed (read %d)\n",
			btv->c.nr, dataRead);

		return;
	}

	FUNC3("%d: Adlink RTV-24 initialisation complete\n", btv->c.nr);
}