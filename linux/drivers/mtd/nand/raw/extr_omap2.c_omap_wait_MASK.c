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
struct TYPE_2__ {int /*<<< orphan*/  gpmc_nand_data; int /*<<< orphan*/  gpmc_nand_command; } ;
struct omap_nand_info {TYPE_1__ reg; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int NAND_CMD_STATUS ; 
 int NAND_STATUS_READY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (int) ; 
 struct omap_nand_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *this)
{
	struct omap_nand_info *info = FUNC2(FUNC3(this));
	unsigned long timeo = jiffies;
	int status;

	timeo += FUNC1(400);

	FUNC6(NAND_CMD_STATUS & 0xFF, info->reg.gpmc_nand_command);
	while (FUNC5(jiffies, timeo)) {
		status = FUNC4(info->reg.gpmc_nand_data);
		if (status & NAND_STATUS_READY)
			break;
		FUNC0();
	}

	status = FUNC4(info->reg.gpmc_nand_data);
	return status;
}