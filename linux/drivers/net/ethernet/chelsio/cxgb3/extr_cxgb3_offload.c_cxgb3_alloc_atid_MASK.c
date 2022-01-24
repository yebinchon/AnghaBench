#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct cxgb3_client* client; void* ctx; } ;
union active_open_entry {TYPE_1__ t3c_tid; union active_open_entry* next; } ;
struct tid_info {scalar_t__ atids_in_use; scalar_t__ ntids; int atid_base; int /*<<< orphan*/  atid_lock; union active_open_entry* afree; union active_open_entry* atid_tab; int /*<<< orphan*/  tids_in_use; } ;
struct t3cdev {int dummy; } ;
struct cxgb3_client {int dummy; } ;
struct TYPE_4__ {struct tid_info tid_maps; } ;

/* Variables and functions */
 scalar_t__ MC5_MIN_TIDS ; 
 TYPE_2__* FUNC0 (struct t3cdev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct t3cdev *tdev, struct cxgb3_client *client,
		     void *ctx)
{
	int atid = -1;
	struct tid_info *t = &(FUNC0(tdev))->tid_maps;

	FUNC2(&t->atid_lock);
	if (t->afree &&
	    t->atids_in_use + FUNC1(&t->tids_in_use) + MC5_MIN_TIDS <=
	    t->ntids) {
		union active_open_entry *p = t->afree;

		atid = (p - t->atid_tab) + t->atid_base;
		t->afree = p->next;
		p->t3c_tid.ctx = ctx;
		p->t3c_tid.client = client;
		t->atids_in_use++;
	}
	FUNC3(&t->atid_lock);
	return atid;
}