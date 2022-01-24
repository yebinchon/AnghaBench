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
struct sdio_mmc_card {int /*<<< orphan*/  work; int /*<<< orphan*/  work_flags; } ;
struct sdio_func {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MWIFIEX_IFACE_WORK_DEVICE_DUMP ; 
 struct sdio_func* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sdio_mmc_card* FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct sdio_func *func = FUNC0(dev);
	struct sdio_mmc_card *card;

	card = FUNC2(func);
	if (!FUNC3(MWIFIEX_IFACE_WORK_DEVICE_DUMP,
			      &card->work_flags))
		FUNC1(&card->work);
}