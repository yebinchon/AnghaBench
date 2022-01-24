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
struct mt7615_patch_hdr {int /*<<< orphan*/  build_date; int /*<<< orphan*/  hw_sw_ver; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_MODE_NEED_RSP ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  MCU_PATCH_ADDRESS ; 
 int /*<<< orphan*/  MT7615_ROM_PATCH ; 
#define  PATCH_IS_DL 130 
#define  PATCH_NOT_DL_SEM_SUCCESS 129 
#define  PATCH_REL_SEM_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt7615_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mt7615_dev*,int) ; 
 int FUNC5 (struct mt7615_dev*,scalar_t__,int) ; 
 int FUNC6 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mt7615_dev *dev)
{
	const struct mt7615_patch_hdr *hdr;
	const struct firmware *fw = NULL;
	int len, ret, sem;

	sem = FUNC4(dev, 1);
	switch (sem) {
	case PATCH_IS_DL:
		return 0;
	case PATCH_NOT_DL_SEM_SUCCESS:
		break;
	default:
		FUNC1(dev->mt76.dev, "Failed to get patch semaphore\n");
		return -EAGAIN;
	}

	ret = FUNC8(&fw, MT7615_ROM_PATCH, dev->mt76.dev);
	if (ret)
		goto out;

	if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
		FUNC1(dev->mt76.dev, "Invalid firmware\n");
		ret = -EINVAL;
		goto out;
	}

	hdr = (const struct mt7615_patch_hdr *)(fw->data);

	FUNC2(dev->mt76.dev, "HW/SW Version: 0x%x, Build Time: %.16s\n",
		 FUNC0(hdr->hw_sw_ver), hdr->build_date);

	len = fw->size - sizeof(*hdr);

	ret = FUNC3(dev, MCU_PATCH_ADDRESS, len,
				       DL_MODE_NEED_RSP);
	if (ret) {
		FUNC1(dev->mt76.dev, "Download request failed\n");
		goto out;
	}

	ret = FUNC5(dev, fw->data + sizeof(*hdr), len);
	if (ret) {
		FUNC1(dev->mt76.dev, "Failed to send firmware to device\n");
		goto out;
	}

	ret = FUNC6(dev);
	if (ret)
		FUNC1(dev->mt76.dev, "Failed to start patch\n");

out:
	FUNC7(fw);

	sem = FUNC4(dev, 0);
	switch (sem) {
	case PATCH_REL_SEM_SUCCESS:
		break;
	default:
		ret = -EAGAIN;
		FUNC1(dev->mt76.dev, "Failed to release patch semaphore\n");
		break;
	}

	return ret;
}