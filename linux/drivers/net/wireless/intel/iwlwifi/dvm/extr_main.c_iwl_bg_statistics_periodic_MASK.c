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
struct timer_list {int dummy; } ;
struct iwl_priv {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 struct iwl_priv* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,int /*<<< orphan*/ ,int) ; 
 struct iwl_priv* priv ; 
 int /*<<< orphan*/  statistics_periodic ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct iwl_priv *priv = FUNC0(priv, t, statistics_periodic);

	if (FUNC3(STATUS_EXIT_PENDING, &priv->status))
		return;

	/* dont send host command if rf-kill is on */
	if (!FUNC1(priv))
		return;

	FUNC2(priv, CMD_ASYNC, false);
}