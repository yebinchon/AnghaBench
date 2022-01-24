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
struct softing {TYPE_1__* pdev; int /*<<< orphan*/ * dpram; } ;
typedef  int int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t DPRAM_COMMAND ; 
 size_t DPRAM_RECEIPT ; 
 int ECANCELED ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int RES_NONE ; 
 int RES_OK ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct softing *card, int16_t cmd,
		const char *msg)
{
	int ret;
	unsigned long stamp;

	FUNC2(RES_NONE, &card->dpram[DPRAM_RECEIPT]);
	FUNC2(cmd, &card->dpram[DPRAM_COMMAND]);
	/* be sure to flush this to the card */
	FUNC7();
	stamp = jiffies + 3 * HZ;
	/* wait for card */
	do {
		ret = FUNC1(&card->dpram[DPRAM_RECEIPT]);
		/* don't have any cached variables */
		FUNC3();
		if (ret == RES_OK)
			return 0;
		if (FUNC5(jiffies, stamp))
			break;
		/* process context => relax */
		FUNC6(500, 10000);
	} while (!FUNC4(current));

	ret = (ret == RES_NONE) ? -ETIMEDOUT : -ECANCELED;
	FUNC0(&card->pdev->dev, "bootloader %s failed (%i)\n", msg, ret);
	return ret;
}