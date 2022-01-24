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
struct nvt_dev {int chip_major; int chip_minor; int /*<<< orphan*/  cr_efdr; int /*<<< orphan*/  cr_efir; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_CHIP_ID_HI ; 
 int /*<<< orphan*/  CR_CHIP_ID_LO ; 
 int /*<<< orphan*/  CR_EFDR2 ; 
 int /*<<< orphan*/  CR_EFIR2 ; 
 int ENODEV ; 
 int NVT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int) ; 
 void* FUNC3 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvt_dev*) ; 
 char* FUNC6 (struct nvt_dev*,int) ; 
 struct device* FUNC7 (struct nvt_dev*) ; 

__attribute__((used)) static int FUNC8(struct nvt_dev *nvt)
{
	struct device *dev = FUNC7(nvt);
	const char *chip_name;
	int chip_id;

	FUNC5(nvt);

	/* Check if we're wired for the alternate EFER setup */
	nvt->chip_major = FUNC3(nvt, CR_CHIP_ID_HI);
	if (nvt->chip_major == 0xff) {
		FUNC4(nvt);
		nvt->cr_efir = CR_EFIR2;
		nvt->cr_efdr = CR_EFDR2;
		FUNC5(nvt);
		nvt->chip_major = FUNC3(nvt, CR_CHIP_ID_HI);
	}
	nvt->chip_minor = FUNC3(nvt, CR_CHIP_ID_LO);

	FUNC4(nvt);

	chip_id = nvt->chip_major << 8 | nvt->chip_minor;
	if (chip_id == NVT_INVALID) {
		FUNC0(dev, "No device found on either EFM port\n");
		return -ENODEV;
	}

	chip_name = FUNC6(nvt, chip_id);

	/* warn, but still let the driver load, if we don't know this chip */
	if (!chip_name)
		FUNC2(dev,
			 "unknown chip, id: 0x%02x 0x%02x, it may not work...",
			 nvt->chip_major, nvt->chip_minor);
	else
		FUNC1(dev, "found %s or compatible: chip id: 0x%02x 0x%02x",
			 chip_name, nvt->chip_major, nvt->chip_minor);

	return 0;
}