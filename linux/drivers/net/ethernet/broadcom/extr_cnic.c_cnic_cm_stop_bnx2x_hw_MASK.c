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
struct cnic_local {int /*<<< orphan*/  iscsi_conn; int /*<<< orphan*/  delete_task; int /*<<< orphan*/  ctx_tbl; } ;
struct cnic_dev {int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cnic_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;

	if (!cp->ctx_tbl)
		return;

	if (!FUNC5(dev->netdev))
		return;

	FUNC2(dev, 0);

	FUNC1(&cp->delete_task);
	FUNC3(cnic_wq);

	if (FUNC0(&cp->iscsi_conn) != 0)
		FUNC4(dev->netdev, "%d iSCSI connections not destroyed\n",
			    FUNC0(&cp->iscsi_conn));
}