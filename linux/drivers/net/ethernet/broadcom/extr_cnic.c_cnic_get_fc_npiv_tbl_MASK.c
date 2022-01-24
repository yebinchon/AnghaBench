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
struct cnic_local {TYPE_1__* ethdev; } ;
struct cnic_fc_npiv_tbl {int dummy; } ;
struct cnic_dev {int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; struct cnic_local* cnic_priv; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int (* drv_get_fc_npiv_tbl ) (int /*<<< orphan*/ ,struct cnic_fc_npiv_tbl*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 int EAGAIN ; 
 int EINVAL ; 
 struct bnx2x* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cnic_fc_npiv_tbl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cnic_dev *dev,
				struct cnic_fc_npiv_tbl *npiv_tbl)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct bnx2x *bp = FUNC1(dev->netdev);
	int ret;

	if (!FUNC3(CNIC_F_CNIC_UP, &dev->flags))
		return -EAGAIN;     /* bnx2x is down */

	if (!FUNC0(bp))
		return -EINVAL;

	ret = cp->ethdev->drv_get_fc_npiv_tbl(dev->netdev, npiv_tbl);
	return ret;
}