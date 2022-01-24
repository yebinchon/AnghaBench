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
typedef  int uint16_t ;
struct softing {TYPE_1__* pdev; int /*<<< orphan*/ * dpram; } ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DPRAM_FCT_HOST ; 
 size_t DPRAM_FCT_PARAM ; 
 size_t DPRAM_FCT_RESULT ; 
 int ECANCELED ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int RES_NONE ; 
 int RES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct softing *card, int16_t cmd, uint16_t vector,
		const char *msg)
{
	int ret;
	unsigned long stamp;

	FUNC3(cmd, &card->dpram[DPRAM_FCT_PARAM]);
	FUNC4(vector >> 8, &card->dpram[DPRAM_FCT_HOST + 1]);
	FUNC4(vector, &card->dpram[DPRAM_FCT_HOST]);
	/* be sure to flush this to the card */
	FUNC8();
	stamp = jiffies + 1 * HZ;
	/* wait for card */
	do {
		/* DPRAM_FCT_HOST is _not_ aligned */
		ret = FUNC2(&card->dpram[DPRAM_FCT_HOST]) +
			(FUNC2(&card->dpram[DPRAM_FCT_HOST + 1]) << 8);
		/* don't have any cached variables */
		FUNC5();
		if (ret == RES_OK)
			/* read return-value now */
			return FUNC1(&card->dpram[DPRAM_FCT_RESULT]);

		if ((ret != vector) || FUNC6(jiffies, stamp))
			break;
		/* process context => relax */
		FUNC7(500, 10000);
	} while (1);

	ret = (ret == RES_NONE) ? -ETIMEDOUT : -ECANCELED;
	FUNC0(&card->pdev->dev, "firmware %s failed (%i)\n", msg, ret);
	return ret;
}