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
struct cpts {int /*<<< orphan*/  refclk; int /*<<< orphan*/  ov_check_period; int /*<<< orphan*/ * clock; int /*<<< orphan*/  phc_index; int /*<<< orphan*/  dev; int /*<<< orphan*/  info; int /*<<< orphan*/  cc; int /*<<< orphan*/  tc; int /*<<< orphan*/  pool; TYPE_1__* pool_data; int /*<<< orphan*/  events; int /*<<< orphan*/  txq; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPTS_EN ; 
 int CPTS_MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TS_PEND_EN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  FUNC5 (struct cpts*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int_enable ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC14(struct cpts *cpts)
{
	int err, i;

	FUNC12(&cpts->txq);
	FUNC0(&cpts->events);
	FUNC0(&cpts->pool);
	for (i = 0; i < CPTS_MAX_EVENTS; i++)
		FUNC8(&cpts->pool_data[i].list, &cpts->pool);

	FUNC4(cpts->refclk);

	FUNC5(cpts, CPTS_EN, control);
	FUNC5(cpts, TS_PEND_EN, int_enable);

	FUNC13(&cpts->tc, &cpts->cc, FUNC7(FUNC6()));

	cpts->clock = FUNC10(&cpts->info, cpts->dev);
	if (FUNC1(cpts->clock)) {
		err = FUNC2(cpts->clock);
		cpts->clock = NULL;
		goto err_ptp;
	}
	cpts->phc_index = FUNC9(cpts->clock);

	FUNC11(cpts->clock, cpts->ov_check_period);
	return 0;

err_ptp:
	FUNC3(cpts->refclk);
	return err;
}