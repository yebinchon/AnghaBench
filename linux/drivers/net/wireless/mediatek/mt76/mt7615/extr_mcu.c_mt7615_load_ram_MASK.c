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
struct mt7615_fw_trailer {int /*<<< orphan*/  build_date; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct firmware {int data; int size; } ;

/* Variables and functions */
 int CR4_REGION_NUM ; 
 int EINVAL ; 
 int /*<<< orphan*/  FW_START_OVERRIDE ; 
 int /*<<< orphan*/  FW_START_WORKING_PDA_CR4 ; 
 int /*<<< orphan*/  MT7615_FIRMWARE_CR4 ; 
 int /*<<< orphan*/  MT7615_FIRMWARE_N9 ; 
 int N9_REGION_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt7615_dev*,struct mt7615_fw_trailer const*,int,int) ; 
 int FUNC4 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mt7615_dev *dev)
{
	const struct mt7615_fw_trailer *hdr;
	const struct firmware *fw;
	int ret;

	ret = FUNC6(&fw, MT7615_FIRMWARE_N9, dev->mt76.dev);
	if (ret)
		return ret;

	if (!fw || !fw->data || fw->size < N9_REGION_NUM * sizeof(*hdr)) {
		FUNC0(dev->mt76.dev, "Invalid firmware\n");
		ret = -EINVAL;
		goto out;
	}

	hdr = (const struct mt7615_fw_trailer *)(fw->data + fw->size -
					N9_REGION_NUM * sizeof(*hdr));

	FUNC1(dev->mt76.dev, "N9 Firmware Version: %.10s, Build Time: %.15s\n",
		 hdr->fw_ver, hdr->build_date);

	ret = FUNC3(dev, hdr, fw->data, false);
	if (ret)
		goto out;

	ret = FUNC4(dev, FUNC2(hdr->addr),
					FW_START_OVERRIDE);
	if (ret) {
		FUNC0(dev->mt76.dev, "Failed to start N9 firmware\n");
		goto out;
	}

	FUNC5(fw);

	ret = FUNC6(&fw, MT7615_FIRMWARE_CR4, dev->mt76.dev);
	if (ret)
		return ret;

	if (!fw || !fw->data || fw->size < CR4_REGION_NUM * sizeof(*hdr)) {
		FUNC0(dev->mt76.dev, "Invalid firmware\n");
		ret = -EINVAL;
		goto out;
	}

	hdr = (const struct mt7615_fw_trailer *)(fw->data + fw->size -
					CR4_REGION_NUM * sizeof(*hdr));

	FUNC1(dev->mt76.dev, "CR4 Firmware Version: %.10s, Build Time: %.15s\n",
		 hdr->fw_ver, hdr->build_date);

	ret = FUNC3(dev, hdr, fw->data, true);
	if (ret)
		goto out;

	ret = FUNC4(dev, 0, FW_START_WORKING_PDA_CR4);
	if (ret)
		FUNC0(dev->mt76.dev, "Failed to start CR4 firmware\n");

out:
	FUNC5(fw);

	return ret;
}