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
struct nvt_dev {int /*<<< orphan*/  cir_wake_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_WAKE_ENABLE_BIT ; 
 int /*<<< orphan*/  CR_ACPI_CIR_WAKE ; 
 int /*<<< orphan*/  CR_ACPI_IRQ_EVENTS2 ; 
 int /*<<< orphan*/  CR_LOGICAL_DEV_EN ; 
 int /*<<< orphan*/  LOGICAL_DEV_ACPI ; 
 int /*<<< orphan*/  LOGICAL_DEV_CIR_WAKE ; 
 int /*<<< orphan*/  LOGICAL_DEV_ENABLE ; 
 int /*<<< orphan*/  PME_INTR_CIR_PASS_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvt_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nvt_dev *nvt)
{
	/* Select ACPI logical device and anable it */
	FUNC2(nvt, LOGICAL_DEV_ACPI);
	FUNC0(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);

	/* Enable CIR Wake via PSOUT# (Pin60) */
	FUNC4(nvt, CIR_WAKE_ENABLE_BIT, CR_ACPI_CIR_WAKE);

	/* enable pme interrupt of cir wakeup event */
	FUNC4(nvt, PME_INTR_CIR_PASS_BIT, CR_ACPI_IRQ_EVENTS2);

	/* Select CIR Wake logical device */
	FUNC2(nvt, LOGICAL_DEV_CIR_WAKE);

	FUNC3(nvt, &nvt->cir_wake_addr);

	FUNC1("CIR Wake initialized, base io port address: 0x%lx",
		nvt->cir_wake_addr);
}