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
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ ucode_trace; } ;
struct iwl_priv {int /*<<< orphan*/  ucode_trace; TYPE_1__ event_log; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 int /*<<< orphan*/  UCODE_TRACE_PERIOD ; 
 struct iwl_priv* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct iwl_priv* priv ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ucode_trace ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct iwl_priv *priv = FUNC0(priv, t, ucode_trace);

	if (FUNC4(STATUS_EXIT_PENDING, &priv->status))
		return;

	if (priv->event_log.ucode_trace) {
		FUNC1(priv);
		/* Reschedule the timer to occur in UCODE_TRACE_PERIOD */
		FUNC2(&priv->ucode_trace,
			 jiffies + FUNC3(UCODE_TRACE_PERIOD));
	}
}