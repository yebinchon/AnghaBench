#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct fpga_data {int /*<<< orphan*/  fw_loaded; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {scalar_t__ jedec_id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FPGA_CLEAR_LOOP_COUNT ; 
 int /*<<< orphan*/  FPGA_CLEAR_MSLEEP ; 
 int FPGA_CMD_CLEAR ; 
 int FPGA_CMD_READ_ID ; 
 int FPGA_CMD_READ_STATUS ; 
 int FPGA_CMD_REFRESH ; 
 int FPGA_CMD_WRITE_DIS ; 
 int FPGA_CMD_WRITE_EN ; 
 int FPGA_CMD_WRITE_INC ; 
 scalar_t__ FPGA_STATUS_CLEARED ; 
 scalar_t__ FPGA_STATUS_DONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* ecp3_dev ; 
 scalar_t__ FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct firmware const*) ; 
 struct fpga_data* FUNC11 (struct spi_device*) ; 
 int FUNC12 (struct spi_device*,int*,int) ; 
 int FUNC13 (struct spi_device*,int*,int,int*,int) ; 

__attribute__((used)) static void FUNC14(const struct firmware *fw, void *context)
{
	struct spi_device *spi = (struct spi_device *)context;
	struct fpga_data *data = FUNC11(spi);
	u8 *buffer;
	int ret;
	u8 txbuf[8];
	u8 rxbuf[8];
	int rx_len = 8;
	int i;
	u32 jedec_id;
	u32 status;

	if (fw == NULL) {
		FUNC3(&spi->dev, "Cannot load firmware, aborting\n");
		return;
	}

	if (fw->size == 0) {
		FUNC3(&spi->dev, "Error: Firmware size is 0!\n");
		return;
	}

	/* Fill dummy data (24 stuffing bits for commands) */
	txbuf[1] = 0x00;
	txbuf[2] = 0x00;
	txbuf[3] = 0x00;

	/* Trying to speak with the FPGA via SPI... */
	txbuf[0] = FPGA_CMD_READ_ID;
	ret = FUNC13(spi, txbuf, 8, rxbuf, rx_len);
	jedec_id = FUNC5(&rxbuf[4]);
	FUNC2(&spi->dev, "FPGA JTAG ID=%08x\n", jedec_id);

	for (i = 0; i < FUNC0(ecp3_dev); i++) {
		if (jedec_id == ecp3_dev[i].jedec_id)
			break;
	}
	if (i == FUNC0(ecp3_dev)) {
		FUNC3(&spi->dev,
			"Error: No supported FPGA detected (JEDEC_ID=%08x)!\n",
			jedec_id);
		return;
	}

	FUNC4(&spi->dev, "FPGA %s detected\n", ecp3_dev[i].name);

	txbuf[0] = FPGA_CMD_READ_STATUS;
	ret = FUNC13(spi, txbuf, 8, rxbuf, rx_len);
	status = FUNC5(&rxbuf[4]);
	FUNC2(&spi->dev, "FPGA Status=%08x\n", status);

	buffer = FUNC7(fw->size + 8, GFP_KERNEL);
	if (!buffer) {
		FUNC3(&spi->dev, "Error: Can't allocate memory!\n");
		return;
	}

	/*
	 * Insert WRITE_INC command into stream (one SPI frame)
	 */
	buffer[0] = FPGA_CMD_WRITE_INC;
	buffer[1] = 0xff;
	buffer[2] = 0xff;
	buffer[3] = 0xff;
	FUNC8(buffer + 4, fw->data, fw->size);

	txbuf[0] = FPGA_CMD_REFRESH;
	ret = FUNC12(spi, txbuf, 4);

	txbuf[0] = FPGA_CMD_WRITE_EN;
	ret = FUNC12(spi, txbuf, 4);

	txbuf[0] = FPGA_CMD_CLEAR;
	ret = FUNC12(spi, txbuf, 4);

	/*
	 * Wait for FPGA memory to become cleared
	 */
	for (i = 0; i < FPGA_CLEAR_LOOP_COUNT; i++) {
		txbuf[0] = FPGA_CMD_READ_STATUS;
		ret = FUNC13(spi, txbuf, 8, rxbuf, rx_len);
		status = FUNC5(&rxbuf[4]);
		if (status == FPGA_STATUS_CLEARED)
			break;

		FUNC9(FPGA_CLEAR_MSLEEP);
	}

	if (i == FPGA_CLEAR_LOOP_COUNT) {
		FUNC3(&spi->dev,
			"Error: Timeout waiting for FPGA to clear (status=%08x)!\n",
			status);
		FUNC6(buffer);
		return;
	}

	FUNC4(&spi->dev, "Configuring the FPGA...\n");
	ret = FUNC12(spi, buffer, fw->size + 8);

	txbuf[0] = FPGA_CMD_WRITE_DIS;
	ret = FUNC12(spi, txbuf, 4);

	txbuf[0] = FPGA_CMD_READ_STATUS;
	ret = FUNC13(spi, txbuf, 8, rxbuf, rx_len);
	status = FUNC5(&rxbuf[4]);
	FUNC2(&spi->dev, "FPGA Status=%08x\n", status);

	/* Check result */
	if (status & FPGA_STATUS_DONE)
		FUNC4(&spi->dev, "FPGA successfully configured!\n");
	else
		FUNC4(&spi->dev, "FPGA not configured (DONE not set)\n");

	/*
	 * Don't forget to release the firmware again
	 */
	FUNC10(fw);

	FUNC6(buffer);

	FUNC1(&data->fw_loaded);
}