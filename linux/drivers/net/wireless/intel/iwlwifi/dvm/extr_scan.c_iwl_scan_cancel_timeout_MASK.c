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
struct iwl_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  STATUS_SCAN_HW ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

void FUNC8(struct iwl_priv *priv, unsigned long ms)
{
	unsigned long timeout = jiffies + FUNC4(ms);

	FUNC3(&priv->mutex);

	FUNC0(priv, "Scan cancel timeout\n");

	FUNC1(priv);

	while (FUNC7(jiffies, timeout)) {
		if (!FUNC6(STATUS_SCAN_HW, &priv->status))
			goto finished;
		FUNC5(20);
	}

	return;

 finished:
	/*
	 * Now STATUS_SCAN_HW is clear. This means that the
	 * device finished, but the background work is going
	 * to execute at best as soon as we release the mutex.
	 * Since we need to be able to issue a new scan right
	 * after this function returns, run the complete here.
	 * The STATUS_SCAN_COMPLETE bit will then be cleared
	 * and prevent the background work from "completing"
	 * a possible new scan.
	 */
	FUNC2(priv);
}