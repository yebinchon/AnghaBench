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
struct enic {int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
#define  VNIC_DEV_INTR_MODE_INTX 130 
#define  VNIC_DEV_INTR_MODE_MSI 129 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int FUNC0 () ; 
 int FUNC1 (struct enic*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(struct enic *enic, int intr)
{
	switch (FUNC2(enic->vdev)) {
	case VNIC_DEV_INTR_MODE_INTX:
		return intr == FUNC0();
	case VNIC_DEV_INTR_MODE_MSIX:
		return intr == FUNC1(enic);
	case VNIC_DEV_INTR_MODE_MSI:
	default:
		return false;
	}
}