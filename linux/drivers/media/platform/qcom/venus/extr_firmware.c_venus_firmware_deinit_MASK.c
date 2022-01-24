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
struct TYPE_2__ {int /*<<< orphan*/  dev; struct iommu_domain* iommu_domain; } ;
struct venus_core {TYPE_1__ fw; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct venus_core *core)
{
	struct iommu_domain *iommu;

	if (!core->fw.dev)
		return;

	iommu = core->fw.iommu_domain;

	FUNC0(iommu, core->fw.dev);
	FUNC1(iommu);

	FUNC2(FUNC3(core->fw.dev));
}