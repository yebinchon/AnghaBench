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
struct stmmac_priv {int /*<<< orphan*/  service_task; int /*<<< orphan*/  wq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMMAC_DOWN ; 
 int /*<<< orphan*/  STMMAC_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct stmmac_priv *priv)
{
	if (!FUNC2(STMMAC_DOWN, &priv->state) &&
	    !FUNC1(STMMAC_SERVICE_SCHED, &priv->state))
		FUNC0(priv->wq, &priv->service_task);
}