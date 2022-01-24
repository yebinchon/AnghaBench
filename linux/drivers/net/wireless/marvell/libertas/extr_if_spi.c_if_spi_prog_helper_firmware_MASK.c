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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  temp ;
struct if_spi_card {int dummy; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int FIRMWARE_DNLD_OK ; 
 int HELPER_FW_LOAD_CHUNK_SZ ; 
 int /*<<< orphan*/  IF_SPI_CARD_INT_CAUSE_REG ; 
 int IF_SPI_CIC_CMD_DOWNLOAD_OVER ; 
 int /*<<< orphan*/  IF_SPI_CMD_RDWRPORT_REG ; 
 int /*<<< orphan*/  IF_SPI_HIST_CMD_DOWNLOAD_RDY ; 
 int /*<<< orphan*/  IF_SPI_HOST_INT_STATUS_REG ; 
 int /*<<< orphan*/  IF_SPI_SCRATCH_1_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct if_spi_card*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct if_spi_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct if_spi_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct if_spi_card*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct if_spi_card *card,
					const struct firmware *firmware)
{
	int err = 0;
	int bytes_remaining;
	const u8 *fw;
	u8 temp[HELPER_FW_LOAD_CHUNK_SZ];

	err = FUNC5(card, 1, 0);
	if (err)
		goto out;

	bytes_remaining = firmware->size;
	fw = firmware->data;

	/* Load helper firmware image */
	while (bytes_remaining > 0) {
		/*
		 * Scratch pad 1 should contain the number of bytes we
		 * want to download to the firmware
		 */
		err = FUNC8(card, IF_SPI_SCRATCH_1_REG,
					HELPER_FW_LOAD_CHUNK_SZ);
		if (err)
			goto out;

		err = FUNC6(card, IF_SPI_HOST_INT_STATUS_REG,
					IF_SPI_HIST_CMD_DOWNLOAD_RDY,
					IF_SPI_HIST_CMD_DOWNLOAD_RDY);
		if (err)
			goto out;

		/*
		 * Feed the data into the command read/write port reg
		 * in chunks of 64 bytes
		 */
		FUNC2(temp, 0, sizeof(temp));
		FUNC1(temp, fw,
		       FUNC3(bytes_remaining, HELPER_FW_LOAD_CHUNK_SZ));
		FUNC0(10);
		err = FUNC7(card, IF_SPI_CMD_RDWRPORT_REG,
					temp, HELPER_FW_LOAD_CHUNK_SZ);
		if (err)
			goto out;

		/* Interrupt the boot code */
		err = FUNC8(card, IF_SPI_HOST_INT_STATUS_REG, 0);
		if (err)
			goto out;
		err = FUNC8(card, IF_SPI_CARD_INT_CAUSE_REG,
				       IF_SPI_CIC_CMD_DOWNLOAD_OVER);
		if (err)
			goto out;
		bytes_remaining -= HELPER_FW_LOAD_CHUNK_SZ;
		fw += HELPER_FW_LOAD_CHUNK_SZ;
	}

	/*
	 * Once the helper / single stage firmware download is complete,
	 * write 0 to scratch pad 1 and interrupt the
	 * bootloader. This completes the helper download.
	 */
	err = FUNC8(card, IF_SPI_SCRATCH_1_REG, FIRMWARE_DNLD_OK);
	if (err)
		goto out;
	err = FUNC8(card, IF_SPI_HOST_INT_STATUS_REG, 0);
	if (err)
		goto out;
	err = FUNC8(card, IF_SPI_CARD_INT_CAUSE_REG,
				IF_SPI_CIC_CMD_DOWNLOAD_OVER);
out:
	if (err)
		FUNC4("failed to load helper firmware (err=%d)\n", err);

	return err;
}