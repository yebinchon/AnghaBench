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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct fmdev {int dummy; } ;
typedef  int /*<<< orphan*/  payload ;
typedef  int /*<<< orphan*/  asic_ver ;
typedef  int /*<<< orphan*/  asic_id ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_ID_GET ; 
 int /*<<< orphan*/  ASIC_VER_GET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FM_ENABLE ; 
 char* FM_FMC_FW_FILE_START ; 
 scalar_t__ FM_MODE_ENTRY_MAX ; 
 scalar_t__ FM_MODE_RX ; 
 int /*<<< orphan*/  FM_POWER_MODE ; 
 char* FM_RX_FW_FILE_START ; 
 char* FM_TX_FW_FILE_START ; 
 int /*<<< orphan*/  REG_RD ; 
 int /*<<< orphan*/  REG_WR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fmdev*,scalar_t__*) ; 
 int FUNC2 (struct fmdev*) ; 
 int FUNC3 (struct fmdev*) ; 
 scalar_t__ FUNC4 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,char*,char*,int,int) ; 

__attribute__((used)) static int FUNC9(struct fmdev *fmdev, u8 mode)
{
	u16 payload;
	__be16 asic_id = 0, asic_ver = 0;
	int resp_len, ret;
	u8 fw_name[50];

	if (mode >= FM_MODE_ENTRY_MAX) {
		FUNC6("Invalid firmware download option\n");
		return -EINVAL;
	}

	/*
	 * Initialize FM common module. FM GPIO toggling is
	 * taken care in Shared Transport driver.
	 */
	ret = FUNC2(fmdev);
	if (ret < 0) {
		FUNC6("Unable to prepare FM Common\n");
		return ret;
	}

	payload = FM_ENABLE;
	if (FUNC4(fmdev, FM_POWER_MODE, REG_WR, &payload,
			sizeof(payload), NULL, NULL))
		goto rel;

	/* Allow the chip to settle down in Channel-8 mode */
	FUNC7(20);

	if (FUNC4(fmdev, ASIC_ID_GET, REG_RD, NULL,
			sizeof(asic_id), &asic_id, &resp_len))
		goto rel;

	if (FUNC4(fmdev, ASIC_VER_GET, REG_RD, NULL,
			sizeof(asic_ver), &asic_ver, &resp_len))
		goto rel;

	FUNC5("ASIC ID: 0x%x , ASIC Version: %d\n",
		FUNC0(asic_id), FUNC0(asic_ver));

	FUNC8(fw_name, "%s_%x.%d.bts", FM_FMC_FW_FILE_START,
		FUNC0(asic_id), FUNC0(asic_ver));

	ret = FUNC1(fmdev, fw_name);
	if (ret < 0) {
		FUNC5("Failed to download firmware file %s\n", fw_name);
		goto rel;
	}
	FUNC8(fw_name, "%s_%x.%d.bts", (mode == FM_MODE_RX) ?
			FM_RX_FW_FILE_START : FM_TX_FW_FILE_START,
			FUNC0(asic_id), FUNC0(asic_ver));

	ret = FUNC1(fmdev, fw_name);
	if (ret < 0) {
		FUNC5("Failed to download firmware file %s\n", fw_name);
		goto rel;
	} else
		return ret;
rel:
	return FUNC3(fmdev);
}