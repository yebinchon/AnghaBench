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
struct qlcnic_adapter {int flags; int /*<<< orphan*/  drv_sds_rings; TYPE_1__* ahw; } ;
struct TYPE_2__ {int num_msix; } ;

/* Variables and functions */
 int ENOMEM ; 
 int QLCNIC_MSIX_ENABLED ; 
 int /*<<< orphan*/  QLCNIC_SINGLE_RING ; 
 int QLCNIC_TSS_RSS ; 
 int FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 (struct qlcnic_adapter*,int) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter)
{
	int num_msix, err = 0;

	if (adapter->flags & QLCNIC_TSS_RSS) {
		err = FUNC4(adapter);
		if (err < 0)
			return err;
		num_msix = adapter->ahw->num_msix;
	} else {
		num_msix = FUNC0(adapter);

		err = FUNC3(adapter, num_msix);
		if (err == -ENOMEM)
			return err;

		if (!(adapter->flags & QLCNIC_MSIX_ENABLED)) {
			FUNC1(adapter);
			adapter->drv_sds_rings = QLCNIC_SINGLE_RING;

			err = FUNC2(adapter);
			if (err)
				return err;
		}
	}

	return 0;
}