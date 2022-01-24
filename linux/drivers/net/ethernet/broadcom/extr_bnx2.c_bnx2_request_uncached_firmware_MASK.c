#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  rv2p; } ;
struct TYPE_9__ {int /*<<< orphan*/  rv2p; } ;
struct bnx2_rv2p_fw_file {TYPE_3__ proc2; TYPE_2__ proc1; } ;
struct bnx2_mips_fw_file {int /*<<< orphan*/  txp; int /*<<< orphan*/  tpat; int /*<<< orphan*/  rxp; int /*<<< orphan*/  cp; int /*<<< orphan*/  com; } ;
struct bnx2 {TYPE_4__* mips_firmware; TYPE_4__* rv2p_firmware; TYPE_1__* pdev; } ;
struct TYPE_11__ {int size; scalar_t__ data; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 scalar_t__ FUNC1 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_ID_5709_A0 ; 
 scalar_t__ BNX2_CHIP_ID_5709_A1 ; 
 int EINVAL ; 
 char* FW_MIPS_FILE_06 ; 
 char* FW_MIPS_FILE_09 ; 
 char* FW_RV2P_FILE_06 ; 
 char* FW_RV2P_FILE_09 ; 
 char* FW_RV2P_FILE_09_Ax ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct bnx2 *bp)
{
	const char *mips_fw_file, *rv2p_fw_file;
	const struct bnx2_mips_fw_file *mips_fw;
	const struct bnx2_rv2p_fw_file *rv2p_fw;
	int rc;

	if (FUNC0(bp) == BNX2_CHIP_5709) {
		mips_fw_file = FW_MIPS_FILE_09;
		if ((FUNC1(bp) == BNX2_CHIP_ID_5709_A0) ||
		    (FUNC1(bp) == BNX2_CHIP_ID_5709_A1))
			rv2p_fw_file = FW_RV2P_FILE_09_Ax;
		else
			rv2p_fw_file = FW_RV2P_FILE_09;
	} else {
		mips_fw_file = FW_MIPS_FILE_06;
		rv2p_fw_file = FW_RV2P_FILE_06;
	}

	rc = FUNC6(&bp->mips_firmware, mips_fw_file, &bp->pdev->dev);
	if (rc) {
		FUNC4("Can't load firmware file \"%s\"\n", mips_fw_file);
		goto out;
	}

	rc = FUNC6(&bp->rv2p_firmware, rv2p_fw_file, &bp->pdev->dev);
	if (rc) {
		FUNC4("Can't load firmware file \"%s\"\n", rv2p_fw_file);
		goto err_release_mips_firmware;
	}
	mips_fw = (const struct bnx2_mips_fw_file *) bp->mips_firmware->data;
	rv2p_fw = (const struct bnx2_rv2p_fw_file *) bp->rv2p_firmware->data;
	if (bp->mips_firmware->size < sizeof(*mips_fw) ||
	    FUNC3(bp->mips_firmware, &mips_fw->com) ||
	    FUNC3(bp->mips_firmware, &mips_fw->cp) ||
	    FUNC3(bp->mips_firmware, &mips_fw->rxp) ||
	    FUNC3(bp->mips_firmware, &mips_fw->tpat) ||
	    FUNC3(bp->mips_firmware, &mips_fw->txp)) {
		FUNC4("Firmware file \"%s\" is invalid\n", mips_fw_file);
		rc = -EINVAL;
		goto err_release_firmware;
	}
	if (bp->rv2p_firmware->size < sizeof(*rv2p_fw) ||
	    FUNC2(bp->rv2p_firmware, &rv2p_fw->proc1.rv2p, 8, true) ||
	    FUNC2(bp->rv2p_firmware, &rv2p_fw->proc2.rv2p, 8, true)) {
		FUNC4("Firmware file \"%s\" is invalid\n", rv2p_fw_file);
		rc = -EINVAL;
		goto err_release_firmware;
	}
out:
	return rc;

err_release_firmware:
	FUNC5(bp->rv2p_firmware);
	bp->rv2p_firmware = NULL;
err_release_mips_firmware:
	FUNC5(bp->mips_firmware);
	goto out;
}