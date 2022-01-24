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
struct wmi {int stopped; int /*<<< orphan*/  wmi_event_tasklet; int /*<<< orphan*/  pending_tx_events; int /*<<< orphan*/  cmd_wait; int /*<<< orphan*/  multi_rmw_mutex; int /*<<< orphan*/  multi_write_mutex; int /*<<< orphan*/  op_mutex; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  wmi_lock; int /*<<< orphan*/  wmi_event_queue; struct ath9k_htc_priv* drv_priv; } ;
struct ath9k_htc_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ath9k_wmi_event_tasklet ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wmi* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

struct wmi *FUNC7(struct ath9k_htc_priv *priv)
{
	struct wmi *wmi;

	wmi = FUNC2(sizeof(struct wmi), GFP_KERNEL);
	if (!wmi)
		return NULL;

	wmi->drv_priv = priv;
	wmi->stopped = false;
	FUNC4(&wmi->wmi_event_queue);
	FUNC5(&wmi->wmi_lock);
	FUNC5(&wmi->event_lock);
	FUNC3(&wmi->op_mutex);
	FUNC3(&wmi->multi_write_mutex);
	FUNC3(&wmi->multi_rmw_mutex);
	FUNC1(&wmi->cmd_wait);
	FUNC0(&wmi->pending_tx_events);
	FUNC6(&wmi->wmi_event_tasklet, ath9k_wmi_event_tasklet,
		     (unsigned long)wmi);

	return wmi;
}