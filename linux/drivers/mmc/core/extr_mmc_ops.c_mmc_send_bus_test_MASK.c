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
typedef  int u8 ;
struct scatterlist {int dummy; } ;
struct mmc_request {struct mmc_data* data; struct mmc_command* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int /*<<< orphan*/  flags; } ;
struct mmc_command {int opcode; int flags; int error; scalar_t__ arg; } ;
struct mmc_card {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MMC_BUS_TEST_R ; 
 int MMC_BUS_TEST_W ; 
 int MMC_CMD_ADTC ; 
 int /*<<< orphan*/  MMC_DATA_READ ; 
 int /*<<< orphan*/  MMC_DATA_WRITE ; 
 int MMC_RSP_R1 ; 
 int MMC_RSP_SPI_R1 ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_data*,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int*,int) ; 

__attribute__((used)) static int
FUNC8(struct mmc_card *card, struct mmc_host *host, u8 opcode,
		  u8 len)
{
	struct mmc_request mrq = {};
	struct mmc_command cmd = {};
	struct mmc_data data = {};
	struct scatterlist sg;
	u8 *data_buf;
	u8 *test_buf;
	int i, err;
	static u8 testdata_8bit[8] = { 0x55, 0xaa, 0, 0, 0, 0, 0, 0 };
	static u8 testdata_4bit[4] = { 0x5a, 0, 0, 0 };

	/* dma onto stack is unsafe/nonportable, but callers to this
	 * routine normally provide temporary on-stack buffers ...
	 */
	data_buf = FUNC1(len, GFP_KERNEL);
	if (!data_buf)
		return -ENOMEM;

	if (len == 8)
		test_buf = testdata_8bit;
	else if (len == 4)
		test_buf = testdata_4bit;
	else {
		FUNC6("%s: Invalid bus_width %d\n",
		       FUNC3(host), len);
		FUNC0(data_buf);
		return -EINVAL;
	}

	if (opcode == MMC_BUS_TEST_W)
		FUNC2(data_buf, test_buf, len);

	mrq.cmd = &cmd;
	mrq.data = &data;
	cmd.opcode = opcode;
	cmd.arg = 0;

	/* NOTE HACK:  the MMC_RSP_SPI_R1 is always correct here, but we
	 * rely on callers to never use this with "native" calls for reading
	 * CSD or CID.  Native versions of those commands use the R2 type,
	 * not R1 plus a data block.
	 */
	cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_ADTC;

	data.blksz = len;
	data.blocks = 1;
	if (opcode == MMC_BUS_TEST_R)
		data.flags = MMC_DATA_READ;
	else
		data.flags = MMC_DATA_WRITE;

	data.sg = &sg;
	data.sg_len = 1;
	FUNC4(&data, card);
	FUNC7(&sg, data_buf, len);
	FUNC5(host, &mrq);
	err = 0;
	if (opcode == MMC_BUS_TEST_R) {
		for (i = 0; i < len / 4; i++)
			if ((test_buf[i] ^ data_buf[i]) != 0xff) {
				err = -EIO;
				break;
			}
	}
	FUNC0(data_buf);

	if (cmd.error)
		return cmd.error;
	if (data.error)
		return data.error;

	return err;
}