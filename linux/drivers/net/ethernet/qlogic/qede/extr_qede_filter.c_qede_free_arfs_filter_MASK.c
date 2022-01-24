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
struct qede_dev {TYPE_1__* arfs; } ;
struct qede_arfs_fltr_node {scalar_t__ sw_id; struct qede_arfs_fltr_node* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  arfs_fltr_bmap; } ;

/* Variables and functions */
 scalar_t__ QEDE_RFS_MAX_FLTR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_arfs_fltr_node*) ; 

__attribute__((used)) static void
FUNC2(struct qede_dev *edev,  struct qede_arfs_fltr_node *fltr)
{
	FUNC1(fltr->data);

	if (fltr->sw_id < QEDE_RFS_MAX_FLTR)
		FUNC0(fltr->sw_id, edev->arfs->arfs_fltr_bmap);

	FUNC1(fltr);
}