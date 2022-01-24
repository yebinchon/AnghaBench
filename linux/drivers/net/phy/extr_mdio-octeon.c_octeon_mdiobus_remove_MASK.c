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
union cvmx_smix_en {scalar_t__ u64; } ;
struct platform_device {int dummy; } ;
struct cavium_mdiobus {scalar_t__ register_base; int /*<<< orphan*/  mii_bus; } ;

/* Variables and functions */
 scalar_t__ SMI_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 struct cavium_mdiobus* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct cavium_mdiobus *bus;
	union cvmx_smix_en smi_en;

	bus = FUNC3(pdev);

	FUNC1(bus->mii_bus);
	FUNC0(bus->mii_bus);
	smi_en.u64 = 0;
	FUNC2(smi_en.u64, bus->register_base + SMI_EN);
	return 0;
}