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
struct nvt_dev {int /*<<< orphan*/  cr_efir; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EFER_EFM_ENABLE ; 
 int /*<<< orphan*/  NVT_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct nvt_dev *nvt)
{
	if (!FUNC1(nvt->cr_efir, 2, NVT_DRIVER_NAME))
		return -EBUSY;

	/* Enabling Extended Function Mode explicitly requires writing 2x */
	FUNC0(EFER_EFM_ENABLE, nvt->cr_efir);
	FUNC0(EFER_EFM_ENABLE, nvt->cr_efir);

	return 0;
}