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
struct aspeed_smc_controller {struct aspeed_smc_chip** chips; TYPE_1__* info; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtd; } ;
struct aspeed_smc_chip {TYPE_2__ nor; } ;
struct TYPE_3__ {int nce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct aspeed_smc_controller *controller)
{
	struct aspeed_smc_chip *chip;
	int n;

	for (n = 0; n < controller->info->nce; n++) {
		chip = controller->chips[n];
		if (chip)
			FUNC0(&chip->nor.mtd);
	}

	return 0;
}