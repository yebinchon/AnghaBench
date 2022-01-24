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
typedef  int u32 ;
struct slic_device {scalar_t__ model; TYPE_1__* pdev; } ;
struct firmware {unsigned int size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int SLIC_FIRMWARE_MAX_SECTIONS ; 
 unsigned int SLIC_FIRMWARE_MIN_SIZE ; 
 char* SLIC_FIRMWARE_MOJAVE ; 
 char* SLIC_FIRMWARE_OASIS ; 
 scalar_t__ SLIC_MODEL_OASIS ; 
 int /*<<< orphan*/  SLIC_REG_WCS ; 
 int SLIC_WCS_COMPARE ; 
 int SLIC_WCS_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct slic_device*) ; 
 int FUNC5 (struct firmware const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct slic_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct slic_device *sdev)
{
	u32 sectstart[SLIC_FIRMWARE_MAX_SECTIONS];
	u32 sectsize[SLIC_FIRMWARE_MAX_SECTIONS];
	const struct firmware *fw;
	unsigned int datalen;
	const char *file;
	int code_start;
	unsigned int i;
	u32 numsects;
	int idx = 0;
	u32 sect;
	u32 instr;
	u32 addr;
	u32 base;
	int err;

	file = (sdev->model == SLIC_MODEL_OASIS) ?  SLIC_FIRMWARE_OASIS :
						    SLIC_FIRMWARE_MOJAVE;
	err = FUNC3(&fw, file, &sdev->pdev->dev);
	if (err) {
		FUNC0(&sdev->pdev->dev, "failed to load firmware %s\n", file);
		return err;
	}
	/* Do an initial sanity check concerning firmware size now. A further
	 * check follows below.
	 */
	if (fw->size < SLIC_FIRMWARE_MIN_SIZE) {
		FUNC0(&sdev->pdev->dev,
			"invalid firmware size %zu (min is %u)\n", fw->size,
			SLIC_FIRMWARE_MIN_SIZE);
		err = -EINVAL;
		goto release;
	}

	numsects = FUNC5(fw, &idx);
	if (numsects == 0 || numsects > SLIC_FIRMWARE_MAX_SECTIONS) {
		FUNC0(&sdev->pdev->dev,
			"invalid number of sections in firmware: %u", numsects);
		err = -EINVAL;
		goto release;
	}

	datalen = numsects * 8 + 4;
	for (i = 0; i < numsects; i++) {
		sectsize[i] = FUNC5(fw, &idx);
		datalen += sectsize[i];
	}

	/* do another sanity check against firmware size */
	if (datalen > fw->size) {
		FUNC0(&sdev->pdev->dev,
			"invalid firmware size %zu (expected >= %u)\n",
			fw->size, datalen);
		err = -EINVAL;
		goto release;
	}
	/* get sections */
	for (i = 0; i < numsects; i++)
		sectstart[i] = FUNC5(fw, &idx);

	code_start = idx;
	instr = FUNC5(fw, &idx);

	for (sect = 0; sect < numsects; sect++) {
		unsigned int ssize = sectsize[sect] >> 3;

		base = sectstart[sect];

		for (addr = 0; addr < ssize; addr++) {
			/* write out instruction address */
			FUNC6(sdev, SLIC_REG_WCS, base + addr);
			/* write out instruction to low addr */
			FUNC6(sdev, SLIC_REG_WCS, instr);
			instr = FUNC5(fw, &idx);
			/* write out instruction to high addr */
			FUNC6(sdev, SLIC_REG_WCS, instr);
			instr = FUNC5(fw, &idx);
		}
	}

	idx = code_start;

	for (sect = 0; sect < numsects; sect++) {
		unsigned int ssize = sectsize[sect] >> 3;

		instr = FUNC5(fw, &idx);
		base = sectstart[sect];
		if (base < 0x8000)
			continue;

		for (addr = 0; addr < ssize; addr++) {
			/* write out instruction address */
			FUNC6(sdev, SLIC_REG_WCS,
				   SLIC_WCS_COMPARE | (base + addr));
			/* write out instruction to low addr */
			FUNC6(sdev, SLIC_REG_WCS, instr);
			instr = FUNC5(fw, &idx);
			/* write out instruction to high addr */
			FUNC6(sdev, SLIC_REG_WCS, instr);
			instr = FUNC5(fw, &idx);
		}
	}
	FUNC4(sdev);
	FUNC1(10);
	/* everything OK, kick off the card */
	FUNC6(sdev, SLIC_REG_WCS, SLIC_WCS_START);
	FUNC4(sdev);
	/* wait long enough for ucode to init card and reach the mainloop */
	FUNC1(20);
release:
	FUNC2(fw);

	return err;
}