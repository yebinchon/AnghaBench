#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mt7603_fw_trailer {char* fw_ver; char* build_date; int /*<<< orphan*/  dl_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; TYPE_2__* hw; } ;
struct mt7603_dev {int mcu_running; TYPE_3__ mt76; } ;
struct firmware {int data; int size; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  MCU_FIRMWARE_ADDRESS ; 
 char* MT7603_FIRMWARE_E1 ; 
 char* MT7603_FIRMWARE_E2 ; 
 scalar_t__ MT7603_REV_E2 ; 
 char* MT7628_FIRMWARE_E1 ; 
 char* MT7628_FIRMWARE_E2 ; 
 scalar_t__ MT7628_REV_E1 ; 
 int /*<<< orphan*/  MT_SCH_4 ; 
 int MT_SCH_4_BYPASS ; 
 int MT_SCH_4_FORCE_QID ; 
 int /*<<< orphan*/  MT_TOP_MISC2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (struct mt7603_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct mt7603_dev*,int,int) ; 
 int FUNC8 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mt7603_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mt7603_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mt7603_dev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mt7603_dev*,int,int) ; 
 scalar_t__ FUNC16 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct firmware const*) ; 
 int FUNC18 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct mt7603_dev *dev)
{
	const struct firmware *fw;
	const struct mt7603_fw_trailer *hdr;
	const char *firmware;
	int dl_len;
	u32 addr, val;
	int ret;

	if (FUNC4(dev)) {
		if (FUNC16(dev) == MT7628_REV_E1)
			firmware = MT7628_FIRMWARE_E1;
		else
			firmware = MT7628_FIRMWARE_E2;
	} else {
		if (FUNC16(dev) < MT7603_REV_E2)
			firmware = MT7603_FIRMWARE_E1;
		else
			firmware = MT7603_FIRMWARE_E2;
	}

	ret = FUNC18(&fw, firmware, dev->mt76.dev);
	if (ret)
		return ret;

	if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
		FUNC2(dev->mt76.dev, "Invalid firmware\n");
		ret = -EINVAL;
		goto out;
	}

	hdr = (const struct mt7603_fw_trailer *)(fw->data + fw->size -
						 sizeof(*hdr));

	FUNC3(dev->mt76.dev, "Firmware Version: %.10s\n", hdr->fw_ver);
	FUNC3(dev->mt76.dev, "Build Time: %.15s\n", hdr->build_date);

	addr = FUNC9(dev, 0x50012498);
	FUNC15(dev, addr, 0x5);
	FUNC15(dev, addr, 0x5);
	FUNC20(1);

	/* switch to bypass mode */
	FUNC12(dev, MT_SCH_4, MT_SCH_4_FORCE_QID,
		 MT_SCH_4_BYPASS | FUNC1(MT_SCH_4_FORCE_QID, 5));

	val = FUNC13(dev, MT_TOP_MISC2);
	if (val & FUNC0(1)) {
		FUNC3(dev->mt76.dev, "Firmware already running...\n");
		goto running;
	}

	if (!FUNC11(dev, MT_TOP_MISC2, FUNC0(0) | FUNC0(1), FUNC0(0), 500)) {
		FUNC2(dev->mt76.dev, "Timeout waiting for ROM code to become ready\n");
		ret = -EIO;
		goto out;
	}

	dl_len = FUNC5(hdr->dl_len) + 4;
	ret = FUNC6(dev, MCU_FIRMWARE_ADDRESS, dl_len);
	if (ret) {
		FUNC2(dev->mt76.dev, "Download request failed\n");
		goto out;
	}

	ret = FUNC7(dev, fw->data, dl_len);
	if (ret) {
		FUNC2(dev->mt76.dev, "Failed to send firmware to device\n");
		goto out;
	}

	ret = FUNC8(dev, MCU_FIRMWARE_ADDRESS);
	if (ret) {
		FUNC2(dev->mt76.dev, "Failed to start firmware\n");
		goto out;
	}

	if (!FUNC11(dev, MT_TOP_MISC2, FUNC0(1), FUNC0(1), 500)) {
		FUNC2(dev->mt76.dev, "Timeout waiting for firmware to initialize\n");
		ret = -EIO;
		goto out;
	}

running:
	FUNC10(dev, MT_SCH_4, MT_SCH_4_FORCE_QID | MT_SCH_4_BYPASS);

	FUNC14(dev, MT_SCH_4, FUNC0(8));
	FUNC10(dev, MT_SCH_4, FUNC0(8));

	dev->mcu_running = true;
	FUNC19(dev->mt76.hw->wiphy->fw_version,
		 sizeof(dev->mt76.hw->wiphy->fw_version),
		 "%.10s-%.15s", hdr->fw_ver, hdr->build_date);
	FUNC3(dev->mt76.dev, "firmware init done\n");

out:
	FUNC17(fw);

	return ret;
}