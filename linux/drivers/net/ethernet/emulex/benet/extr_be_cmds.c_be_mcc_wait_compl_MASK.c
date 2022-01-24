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
struct TYPE_4__ {int /*<<< orphan*/  used; } ;
struct be_mcc_obj {TYPE_2__ q; } ;
struct be_adapter {TYPE_1__* pdev; struct be_mcc_obj mcc_obj; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_ERROR_ANY ; 
 int /*<<< orphan*/  BE_ERROR_FW ; 
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int mcc_timeout ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct be_adapter *adapter)
{
#define mcc_timeout		12000 /* 12s timeout */
	int i, status = 0;
	struct be_mcc_obj *mcc_obj = &adapter->mcc_obj;

	for (i = 0; i < mcc_timeout; i++) {
		if (FUNC1(adapter, BE_ERROR_ANY))
			return -EIO;

		status = FUNC2(adapter);

		if (FUNC0(&mcc_obj->q.used) == 0)
			break;
		FUNC5(500, 1000);
	}
	if (i == mcc_timeout) {
		FUNC4(&adapter->pdev->dev, "FW not responding\n");
		FUNC3(adapter, BE_ERROR_FW);
		return -EIO;
	}
	return status;
}