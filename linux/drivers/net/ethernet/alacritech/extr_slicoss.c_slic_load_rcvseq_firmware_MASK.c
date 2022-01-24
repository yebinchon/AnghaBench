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
typedef  char const* u32 ;
struct slic_device {scalar_t__ model; TYPE_1__* pdev; } ;
struct firmware {char const* size; scalar_t__* data; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 char const* SLIC_FIRMWARE_MIN_SIZE ; 
 scalar_t__ SLIC_MODEL_OASIS ; 
 char const* SLIC_RCVWCS_BEGIN ; 
 char const* SLIC_RCVWCS_FINISH ; 
 char* SLIC_RCV_FIRMWARE_MOJAVE ; 
 char* SLIC_RCV_FIRMWARE_OASIS ; 
 int /*<<< orphan*/  SLIC_REG_RCV_WCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 char const* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct slic_device*) ; 
 char const* FUNC5 (struct firmware const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct slic_device*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC7(struct slic_device *sdev)
{
	const struct firmware *fw;
	const char *file;
	u32 codelen;
	int idx = 0;
	u32 instr;
	u32 addr;
	int err;

	file = (sdev->model == SLIC_MODEL_OASIS) ?  SLIC_RCV_FIRMWARE_OASIS :
						    SLIC_RCV_FIRMWARE_MOJAVE;
	err = FUNC3(&fw, file, &sdev->pdev->dev);
	if (err) {
		FUNC0(&sdev->pdev->dev,
			"failed to load receive sequencer firmware %s\n", file);
		return err;
	}
	/* Do an initial sanity check concerning firmware size now. A further
	 * check follows below.
	 */
	if (fw->size < SLIC_FIRMWARE_MIN_SIZE) {
		FUNC0(&sdev->pdev->dev,
			"invalid firmware size %zu (min %u expected)\n",
			fw->size, SLIC_FIRMWARE_MIN_SIZE);
		err = -EINVAL;
		goto release;
	}

	codelen = FUNC5(fw, &idx);

	/* do another sanity check against firmware size */
	if ((codelen + 4) > fw->size) {
		FUNC0(&sdev->pdev->dev,
			"invalid rcv-sequencer firmware size %zu\n", fw->size);
		err = -EINVAL;
		goto release;
	}

	/* download sequencer code to card */
	FUNC6(sdev, SLIC_REG_RCV_WCS, SLIC_RCVWCS_BEGIN);
	for (addr = 0; addr < codelen; addr++) {
		__le32 val;
		/* write out instruction address */
		FUNC6(sdev, SLIC_REG_RCV_WCS, addr);

		instr = FUNC5(fw, &idx);
		/* write out the instruction data low addr */
		FUNC6(sdev, SLIC_REG_RCV_WCS, instr);

		val = (__le32)fw->data[idx];
		instr = FUNC1(val);
		idx++;
		/* write out the instruction data high addr */
		FUNC6(sdev, SLIC_REG_RCV_WCS, instr);
	}
	/* finish download */
	FUNC6(sdev, SLIC_REG_RCV_WCS, SLIC_RCVWCS_FINISH);
	FUNC4(sdev);
release:
	FUNC2(fw);

	return err;
}