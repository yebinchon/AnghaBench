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
union listen_entry {TYPE_1__ t3c_tid; union listen_entry* next; } ;
struct tid_info {int stid_base; int /*<<< orphan*/  stid_lock; int /*<<< orphan*/  stids_in_use; union listen_entry* sfree; union listen_entry* stid_tab; } ;
struct t3cdev {int dummy; } ;
struct cxgb3_client {int dummy; } ;
struct TYPE_4__ {struct tid_info tid_maps; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct t3cdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct t3cdev *tdev, struct cxgb3_client *client,
		     void *ctx)
{
	int stid = -1;
	struct tid_info *t = &(FUNC0(tdev))->tid_maps;

	FUNC1(&t->stid_lock);
	if (t->sfree) {
		union listen_entry *p = t->sfree;

		stid = (p - t->stid_tab) + t->stid_base;
		t->sfree = p->next;
		p->t3c_tid.ctx = ctx;
		p->t3c_tid.client = client;
		t->stids_in_use++;
	}
	FUNC2(&t->stid_lock);
	return stid;
}