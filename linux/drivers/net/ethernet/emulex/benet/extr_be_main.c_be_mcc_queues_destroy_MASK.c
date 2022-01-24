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
struct be_queue_info {scalar_t__ created; } ;
struct TYPE_2__ {struct be_queue_info cq; struct be_queue_info q; } ;
struct be_adapter {TYPE_1__ mcc_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  QTYPE_CQ ; 
 int /*<<< orphan*/  QTYPE_MCCQ ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,struct be_queue_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,struct be_queue_info*) ; 

__attribute__((used)) static void FUNC2(struct be_adapter *adapter)
{
	struct be_queue_info *q;

	q = &adapter->mcc_obj.q;
	if (q->created)
		FUNC0(adapter, q, QTYPE_MCCQ);
	FUNC1(adapter, q);

	q = &adapter->mcc_obj.cq;
	if (q->created)
		FUNC0(adapter, q, QTYPE_CQ);
	FUNC1(adapter, q);
}