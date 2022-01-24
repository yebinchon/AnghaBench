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
struct TYPE_2__ {int /*<<< orphan*/ * data; int /*<<< orphan*/ * notify_link_chg; } ;
struct lmac {int /*<<< orphan*/  event_cb_lock; TYPE_1__ event_cb; } ;
struct cgx {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct lmac* FUNC0 (int,struct cgx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(void *cgxd, int lmac_id)
{
	struct lmac *lmac;
	unsigned long flags;
	struct cgx *cgx = cgxd;

	lmac = FUNC0(lmac_id, cgx);
	if (!lmac)
		return -ENODEV;

	FUNC1(&lmac->event_cb_lock, flags);
	lmac->event_cb.notify_link_chg = NULL;
	lmac->event_cb.data = NULL;
	FUNC2(&lmac->event_cb_lock, flags);

	return 0;
}