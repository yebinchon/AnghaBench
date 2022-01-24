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
struct TYPE_4__ {int /*<<< orphan*/  devt; } ;
struct cxl {TYPE_2__ dev; int /*<<< orphan*/  adapter_num; TYPE_1__* guest; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_3__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fops ; 
 int /*<<< orphan*/  sem ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(struct cxl *adapter)
{
	dev_t devt;
	int rc;

	devt = FUNC2(FUNC1(FUNC5()), FUNC0(adapter));
	FUNC4(&adapter->guest->cdev, &fops);
	if ((rc = FUNC3(&adapter->guest->cdev, devt, 1))) {
		FUNC6(&adapter->dev,
			"Unable to add chardev on adapter (card%i): %i\n",
			adapter->adapter_num, rc);
		goto err;
	}
	adapter->dev.devt = devt;
	FUNC7(&sem, 1);
err:
	return rc;
}