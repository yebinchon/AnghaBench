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
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ks8995_switch {TYPE_2__* pdata; int /*<<< orphan*/  regs_attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct ks8995_switch* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct ks8995_switch *ks = FUNC3(spi);

	FUNC4(&spi->dev.kobj, &ks->regs_attr);

	/* assert reset */
	if (ks->pdata && FUNC0(ks->pdata->reset_gpio))
		FUNC2(FUNC1(ks->pdata->reset_gpio), 1);

	return 0;
}