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
typedef  int /*<<< orphan*/  u32 ;
struct hl_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CA53_RESET ; 
 int /*<<< orphan*/  CPU_BOOT_STATUS_NA ; 
 int /*<<< orphan*/  CPU_RESET_ASSERT ; 
 int /*<<< orphan*/  CPU_RESET_CORE0_DEASSERT ; 
 int /*<<< orphan*/  KMD_MSG_FIT_RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SRAM_BASE_ADDR ; 
 scalar_t__ UBOOT_FW_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_device*) ; 
 int FUNC3 (struct hl_device*) ; 
 int FUNC4 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  mmCPU_CA53_CFG_ARM_RST_CONTROL ; 
 int /*<<< orphan*/  mmCPU_CA53_CFG_RST_ADDR_LSB_0 ; 
 int /*<<< orphan*/  mmCPU_CA53_CFG_RST_ADDR_MSB_0 ; 
 int /*<<< orphan*/  mmPSOC_GLOBAL_CONF_UBOOT_MAGIC ; 
 int /*<<< orphan*/  mmPSOC_GLOBAL_CONF_UNIT_RST_N ; 
 int /*<<< orphan*/  mmPSOC_GLOBAL_CONF_WARM_REBOOT ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct hl_device *hdev)
{
	u32 val, unit_rst_val;
	int rc;

	/* Must initialize SRAM scrambler before pushing u-boot to SRAM */
	FUNC2(hdev);

	/* Put ARM cores into reset */
	FUNC1(mmCPU_CA53_CFG_ARM_RST_CONTROL, CPU_RESET_ASSERT);
	val = FUNC0(mmCPU_CA53_CFG_ARM_RST_CONTROL);

	/* Reset the CA53 MACRO */
	unit_rst_val = FUNC0(mmPSOC_GLOBAL_CONF_UNIT_RST_N);
	FUNC1(mmPSOC_GLOBAL_CONF_UNIT_RST_N, CA53_RESET);
	val = FUNC0(mmPSOC_GLOBAL_CONF_UNIT_RST_N);
	FUNC1(mmPSOC_GLOBAL_CONF_UNIT_RST_N, unit_rst_val);
	val = FUNC0(mmPSOC_GLOBAL_CONF_UNIT_RST_N);

	rc = FUNC4(hdev);
	if (rc)
		return rc;

	rc = FUNC3(hdev);
	if (rc)
		return rc;

	FUNC1(mmPSOC_GLOBAL_CONF_UBOOT_MAGIC, KMD_MSG_FIT_RDY);
	FUNC1(mmPSOC_GLOBAL_CONF_WARM_REBOOT, CPU_BOOT_STATUS_NA);

	FUNC1(mmCPU_CA53_CFG_RST_ADDR_LSB_0,
		FUNC5(SRAM_BASE_ADDR + UBOOT_FW_OFFSET));
	FUNC1(mmCPU_CA53_CFG_RST_ADDR_MSB_0,
		FUNC6(SRAM_BASE_ADDR + UBOOT_FW_OFFSET));

	/* Release ARM core 0 from reset */
	FUNC1(mmCPU_CA53_CFG_ARM_RST_CONTROL,
					CPU_RESET_CORE0_DEASSERT);
	val = FUNC0(mmCPU_CA53_CFG_ARM_RST_CONTROL);

	return 0;
}