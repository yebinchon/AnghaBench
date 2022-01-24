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
typedef  int u32 ;
struct mei_me_hw {scalar_t__ d0i3_supported; } ;
struct TYPE_2__ {int /*<<< orphan*/  minor_version; int /*<<< orphan*/  major_version; } ;
struct mei_device {TYPE_1__ version; int /*<<< orphan*/  dev; int /*<<< orphan*/  hbm_f_pg_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBM_MAJOR_VERSION_PGI ; 
 int /*<<< orphan*/  HBM_MINOR_VERSION_PGI ; 
 int ME_PGIC_HRA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mei_device*) ; 
 struct mei_me_hw* FUNC2 (struct mei_device*) ; 

__attribute__((used)) static bool FUNC3(struct mei_device *dev)
{
	struct mei_me_hw *hw = FUNC2(dev);
	u32 reg = FUNC1(dev);

	if (hw->d0i3_supported)
		return true;

	if ((reg & ME_PGIC_HRA) == 0)
		goto notsupported;

	if (!dev->hbm_f_pg_supported)
		goto notsupported;

	return true;

notsupported:
	FUNC0(dev->dev, "pg: not supported: d0i3 = %d HGP = %d hbm version %d.%d ?= %d.%d\n",
		hw->d0i3_supported,
		!!(reg & ME_PGIC_HRA),
		dev->version.major_version,
		dev->version.minor_version,
		HBM_MAJOR_VERSION_PGI,
		HBM_MINOR_VERSION_PGI);

	return false;
}