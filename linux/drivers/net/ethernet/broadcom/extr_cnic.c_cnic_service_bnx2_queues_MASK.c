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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  sw_prod_idx; int /*<<< orphan*/  io_addr; scalar_t__* status_idx_ptr; } ;
struct cnic_local {TYPE_1__ kcq1; int /*<<< orphan*/ * kwq_con_idx_ptr; int /*<<< orphan*/  kwq_con_idx; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_local*) ; 
 int FUNC3 (struct cnic_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_dev*,int) ; 

__attribute__((used)) static u32 FUNC6(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	u32 status_idx = (u16) *cp->kcq1.status_idx_ptr;
	int kcqe_cnt;

	/* status block index must be read before reading other fields */
	FUNC4();
	cp->kwq_con_idx = *cp->kwq_con_idx_ptr;

	while ((kcqe_cnt = FUNC3(dev, &cp->kcq1))) {

		FUNC5(dev, kcqe_cnt);

		/* Tell compiler that status_blk fields can change. */
		FUNC1();
		status_idx = (u16) *cp->kcq1.status_idx_ptr;
		/* status block index must be read first */
		FUNC4();
		cp->kwq_con_idx = *cp->kwq_con_idx_ptr;
	}

	FUNC0(dev, cp->kcq1.io_addr, cp->kcq1.sw_prod_idx);

	FUNC2(cp);

	return status_idx;
}