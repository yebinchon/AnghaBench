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
struct cnic_local {int /*<<< orphan*/  (* stop_hw ) (struct cnic_dev*) ;int /*<<< orphan*/ * ulp_ops; TYPE_2__* ethdev; int /*<<< orphan*/  (* stop_cm ) (struct cnic_dev*) ;TYPE_1__* udev; } ;
struct cnic_dev {int /*<<< orphan*/  pcidev; int /*<<< orphan*/  flags; struct cnic_local* cnic_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  drv_state; } ;
struct TYPE_3__ {int uio_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNIC_DRV_STATE_HANDLES_IRQ ; 
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 size_t CNIC_ULP_L4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct cnic_dev *dev)
{
	if (FUNC9(CNIC_F_CNIC_UP, &dev->flags)) {
		struct cnic_local *cp = dev->cnic_priv;
		int i = 0;

		/* Need to wait for the ring shutdown event to complete
		 * before clearing the CNIC_UP flag.
		 */
		while (cp->udev && cp->udev->uio_dev != -1 && i < 15) {
			FUNC4(100);
			i++;
		}
		FUNC3(dev);
		cp->stop_cm(dev);
		cp->ethdev->drv_state &= ~CNIC_DRV_STATE_HANDLES_IRQ;
		FUNC1(CNIC_F_CNIC_UP, &dev->flags);
		FUNC0(cp->ulp_ops[CNIC_ULP_L4], NULL);
		FUNC8();
		FUNC2(dev);
		cp->stop_hw(dev);
		FUNC5(dev->pcidev);
	}
}