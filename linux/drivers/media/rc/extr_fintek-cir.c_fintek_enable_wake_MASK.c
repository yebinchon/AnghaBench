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
struct fintek_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_PME_CIR_BIT ; 
 int /*<<< orphan*/  ACPI_STATE_CIR_BIT ; 
 int /*<<< orphan*/  ACPI_WAKE_EN_CIR_BIT ; 
 int /*<<< orphan*/  LDEV_ACPI_PME_CLR_REG ; 
 int /*<<< orphan*/  LDEV_ACPI_PME_EN_REG ; 
 int /*<<< orphan*/  LDEV_ACPI_STATE_REG ; 
 int /*<<< orphan*/  LDEV_ACPI_WAKE_EN_REG ; 
 int /*<<< orphan*/  LOGICAL_DEV_ACPI ; 
 int /*<<< orphan*/  FUNC0 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fintek_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fintek_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fintek_dev *fintek)
{
	FUNC1(fintek);
	FUNC2(fintek, LOGICAL_DEV_ACPI);

	/* Allow CIR PME's to wake system */
	FUNC3(fintek, ACPI_WAKE_EN_CIR_BIT, LDEV_ACPI_WAKE_EN_REG);
	/* Enable CIR PME's */
	FUNC3(fintek, ACPI_PME_CIR_BIT, LDEV_ACPI_PME_EN_REG);
	/* Clear CIR PME status register */
	FUNC3(fintek, ACPI_PME_CIR_BIT, LDEV_ACPI_PME_CLR_REG);
	/* Save state */
	FUNC3(fintek, ACPI_STATE_CIR_BIT, LDEV_ACPI_STATE_REG);

	FUNC0(fintek);
}