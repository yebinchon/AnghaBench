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
struct wil6210_vif {int /*<<< orphan*/  disconnect_worker; } ;
struct wil6210_priv {int /*<<< orphan*/  wmi_wq; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  connect_timer ; 
 struct wil6210_vif* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wil6210_vif* vif ; 
 struct wil6210_priv* FUNC2 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct wil6210_vif *vif = FUNC0(vif, t, connect_timer);
	struct wil6210_priv *wil = FUNC2(vif);
	bool q;

	FUNC4(wil, "Connect timeout detected, disconnect station\n");

	/* reschedule to thread context - disconnect won't
	 * run from atomic context.
	 * queue on wmi_wq to prevent race with connect event.
	 */
	q = FUNC1(wil->wmi_wq, &vif->disconnect_worker);
	FUNC3(wil, "queue_work of disconnect_worker -> %d\n", q);
}