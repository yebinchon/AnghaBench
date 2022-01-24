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
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {int drv_state; } ;

/* Variables and functions */
 int CNIC_DRV_STATE_USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_local*) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*) ; 

__attribute__((used)) static int FUNC2(void *data, void *status_blk)
{
	struct cnic_dev *dev = data;
	struct cnic_local *cp = dev->cnic_priv;

	if (!(cp->ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX))
		FUNC1(dev);

	FUNC0(cp);

	return 0;
}