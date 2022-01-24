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
struct TYPE_2__ {struct list_head* next; } ;
struct wil6210_vif {int /*<<< orphan*/  probe_client_mutex; TYPE_1__ probe_client_pending; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct list_head *FUNC4(struct wil6210_vif *vif)
{
	struct list_head *ret = NULL;

	FUNC2(&vif->probe_client_mutex);

	if (!FUNC1(&vif->probe_client_pending)) {
		ret = vif->probe_client_pending.next;
		FUNC0(ret);
	}

	FUNC3(&vif->probe_client_mutex);

	return ret;
}