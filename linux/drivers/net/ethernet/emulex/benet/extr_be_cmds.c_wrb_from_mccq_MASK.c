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
struct be_queue_info {scalar_t__ len; int /*<<< orphan*/  used; int /*<<< orphan*/  created; } ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {struct be_queue_info q; } ;
struct be_adapter {TYPE_1__ mcc_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct be_queue_info*) ; 
 struct be_mcc_wrb* FUNC4 (struct be_queue_info*) ; 

__attribute__((used)) static struct be_mcc_wrb *FUNC5(struct be_adapter *adapter)
{
	struct be_queue_info *mccq = &adapter->mcc_obj.q;
	struct be_mcc_wrb *wrb;

	if (!mccq->created)
		return NULL;

	if (FUNC1(&mccq->used) >= mccq->len)
		return NULL;

	wrb = FUNC4(mccq);
	FUNC3(mccq);
	FUNC0(&mccq->used);
	FUNC2(wrb, 0, sizeof(*wrb));
	return wrb;
}