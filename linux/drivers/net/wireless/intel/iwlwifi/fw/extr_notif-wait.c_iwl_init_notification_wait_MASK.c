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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_notification_wait {int (* fn ) (struct iwl_notif_wait_data*,struct iwl_rx_packet*,void*) ;int n_cmds; int triggered; int aborted; int /*<<< orphan*/  list; int /*<<< orphan*/  cmds; void* fn_data; } ;
struct iwl_notif_wait_data {int /*<<< orphan*/  notif_wait_lock; int /*<<< orphan*/  notif_waits; } ;

/* Variables and functions */
 int MAX_NOTIF_CMDS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct iwl_notif_wait_data *notif_wait,
			   struct iwl_notification_wait *wait_entry,
			   const u16 *cmds, int n_cmds,
			   bool (*fn)(struct iwl_notif_wait_data *notif_wait,
				      struct iwl_rx_packet *pkt, void *data),
			   void *fn_data)
{
	if (FUNC0(n_cmds > MAX_NOTIF_CMDS))
		n_cmds = MAX_NOTIF_CMDS;

	wait_entry->fn = fn;
	wait_entry->fn_data = fn_data;
	wait_entry->n_cmds = n_cmds;
	FUNC2(wait_entry->cmds, cmds, n_cmds * sizeof(u16));
	wait_entry->triggered = false;
	wait_entry->aborted = false;

	FUNC3(&notif_wait->notif_wait_lock);
	FUNC1(&wait_entry->list, &notif_wait->notif_waits);
	FUNC4(&notif_wait->notif_wait_lock);
}