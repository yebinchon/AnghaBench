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
struct enic {int /*<<< orphan*/  vdev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
#define  VNIC_DEV_INTR_MODE_MSI 129 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int /*<<< orphan*/  VNIC_DEV_INTR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct enic *enic)
{
	switch (FUNC2(enic->vdev)) {
	case VNIC_DEV_INTR_MODE_MSIX:
		FUNC1(enic->pdev);
		break;
	case VNIC_DEV_INTR_MODE_MSI:
		FUNC0(enic->pdev);
		break;
	default:
		break;
	}

	FUNC3(enic->vdev, VNIC_DEV_INTR_MODE_UNKNOWN);
}