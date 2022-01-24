#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct TYPE_3__ {int hs_activated; int hs_activate_wait_q_woken; int /*<<< orphan*/  hs_activate_wait_q; int /*<<< orphan*/  work_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT ; 
 int /*<<< orphan*/  MWIFIEX_IS_HS_CONFIGURED ; 
 int /*<<< orphan*/  RXREOR_FORCE_NO_DROP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct mwifiex_private *priv, u8 activated)
{
	if (activated) {
		if (FUNC2(MWIFIEX_IS_HS_CONFIGURED,
			     &priv->adapter->work_flags)) {
			priv->adapter->hs_activated = true;
			FUNC1(priv->adapter,
						    RXREOR_FORCE_NO_DROP);
			FUNC0(priv->adapter, EVENT,
				    "event: hs_activated\n");
			priv->adapter->hs_activate_wait_q_woken = true;
			FUNC3(
				&priv->adapter->hs_activate_wait_q);
		} else {
			FUNC0(priv->adapter, EVENT,
				    "event: HS not configured\n");
		}
	} else {
		FUNC0(priv->adapter, EVENT,
			    "event: hs_deactivated\n");
		priv->adapter->hs_activated = false;
	}
}