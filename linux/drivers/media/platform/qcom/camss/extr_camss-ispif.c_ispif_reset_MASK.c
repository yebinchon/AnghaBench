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
typedef  int u32 ;
struct ispif_device {int /*<<< orphan*/  clock_for_reset; int /*<<< orphan*/  nclocks_for_reset; int /*<<< orphan*/  reset_complete; scalar_t__ base; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ISPIF_RESET_TIMEOUT_MS ; 
 scalar_t__ ISPIF_RST_CMD_0 ; 
 int ISPIF_RST_CMD_0_MISC_LOGIC_RST ; 
 int ISPIF_RST_CMD_0_PIX_INTF_0_CSID_RST ; 
 int ISPIF_RST_CMD_0_PIX_INTF_0_VFE_RST ; 
 int ISPIF_RST_CMD_0_PIX_INTF_1_CSID_RST ; 
 int ISPIF_RST_CMD_0_PIX_INTF_1_VFE_RST ; 
 int ISPIF_RST_CMD_0_PIX_OUTPUT_0_MISR_RST ; 
 int ISPIF_RST_CMD_0_RDI_INTF_0_CSID_RST ; 
 int ISPIF_RST_CMD_0_RDI_INTF_0_VFE_RST ; 
 int ISPIF_RST_CMD_0_RDI_INTF_1_CSID_RST ; 
 int ISPIF_RST_CMD_0_RDI_INTF_1_VFE_RST ; 
 int ISPIF_RST_CMD_0_RDI_INTF_2_CSID_RST ; 
 int ISPIF_RST_CMD_0_RDI_INTF_2_VFE_RST ; 
 int ISPIF_RST_CMD_0_RDI_OUTPUT_0_MISR_RST ; 
 int ISPIF_RST_CMD_0_RDI_OUTPUT_1_MISR_RST ; 
 int ISPIF_RST_CMD_0_RDI_OUTPUT_2_MISR_RST ; 
 int ISPIF_RST_CMD_0_STROBED_RST_EN ; 
 int ISPIF_RST_CMD_0_SW_REG_RST ; 
 int /*<<< orphan*/  PM_DOMAIN_VFE0 ; 
 int /*<<< orphan*/  PM_DOMAIN_VFE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ispif_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ispif_device*) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct ispif_device *ispif)
{
	unsigned long time;
	u32 val;
	int ret;

	ret = FUNC3(FUNC7(ispif), PM_DOMAIN_VFE0);
	if (ret < 0)
		return ret;

	ret = FUNC3(FUNC7(ispif), PM_DOMAIN_VFE1);
	if (ret < 0)
		return ret;

	ret = FUNC1(ispif->nclocks_for_reset,
				  ispif->clock_for_reset,
				  FUNC8(ispif));
	if (ret < 0)
		return ret;

	FUNC6(&ispif->reset_complete);

	val = ISPIF_RST_CMD_0_STROBED_RST_EN |
		ISPIF_RST_CMD_0_MISC_LOGIC_RST |
		ISPIF_RST_CMD_0_SW_REG_RST |
		ISPIF_RST_CMD_0_PIX_INTF_0_CSID_RST |
		ISPIF_RST_CMD_0_PIX_INTF_0_VFE_RST |
		ISPIF_RST_CMD_0_PIX_INTF_1_CSID_RST |
		ISPIF_RST_CMD_0_PIX_INTF_1_VFE_RST |
		ISPIF_RST_CMD_0_RDI_INTF_0_CSID_RST |
		ISPIF_RST_CMD_0_RDI_INTF_0_VFE_RST |
		ISPIF_RST_CMD_0_RDI_INTF_1_CSID_RST |
		ISPIF_RST_CMD_0_RDI_INTF_1_VFE_RST |
		ISPIF_RST_CMD_0_RDI_INTF_2_CSID_RST |
		ISPIF_RST_CMD_0_RDI_INTF_2_VFE_RST |
		ISPIF_RST_CMD_0_PIX_OUTPUT_0_MISR_RST |
		ISPIF_RST_CMD_0_RDI_OUTPUT_0_MISR_RST |
		ISPIF_RST_CMD_0_RDI_OUTPUT_1_MISR_RST |
		ISPIF_RST_CMD_0_RDI_OUTPUT_2_MISR_RST;

	FUNC10(val, ispif->base + ISPIF_RST_CMD_0);

	time = FUNC9(&ispif->reset_complete,
		FUNC5(ISPIF_RESET_TIMEOUT_MS));
	if (!time) {
		FUNC4(FUNC8(ispif), "ISPIF reset timeout\n");
		ret = -EIO;
	}

	FUNC0(ispif->nclocks_for_reset, ispif->clock_for_reset);

	FUNC2(FUNC7(ispif), PM_DOMAIN_VFE0);
	FUNC2(FUNC7(ispif), PM_DOMAIN_VFE1);

	return ret;
}