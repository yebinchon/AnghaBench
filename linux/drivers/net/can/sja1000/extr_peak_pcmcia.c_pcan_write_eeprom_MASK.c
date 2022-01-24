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
typedef  int u8 ;
typedef  int u16 ;
struct pcan_pccard {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int PCC_EEP_RDSR ; 
 int PCC_EEP_SR_WEN ; 
 int PCC_EEP_SR_WIP ; 
 int PCC_EEP_WRDI ; 
 int PCC_EEP_WREN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PCC_SPI_ADR ; 
 int /*<<< orphan*/  PCC_SPI_DIR ; 
 int /*<<< orphan*/  PCC_SPI_DOR ; 
 int /*<<< orphan*/  PCC_SPI_IR ; 
 int PCC_WRITE_MAX_LOOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct pcan_pccard*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pcan_pccard*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcan_pccard*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct pcan_pccard *card, u16 addr, u8 v)
{
	u8 status;
	int err, i;

	/* write instruction enabling write */
	FUNC4(card, PCC_SPI_IR, PCC_EEP_WREN);
	err = FUNC3(card);
	if (err)
		goto we_spi_err;

	/* wait until write enabled */
	for (i = 0; i < PCC_WRITE_MAX_LOOP; i++) {
		/* write instruction reading the status register */
		FUNC4(card, PCC_SPI_IR, PCC_EEP_RDSR);
		err = FUNC3(card);
		if (err)
			goto we_spi_err;

		/* get status register value and check write enable bit */
		status = FUNC2(card, PCC_SPI_DIR);
		if (status & PCC_EEP_SR_WEN)
			break;
	}

	if (i >= PCC_WRITE_MAX_LOOP) {
		FUNC1(&card->pdev->dev,
			"stop waiting to be allowed to write in eeprom\n");
		return -EIO;
	}

	/* set address and data */
	FUNC4(card, PCC_SPI_ADR, addr & 0xff);
	FUNC4(card, PCC_SPI_DOR, v);

	/*
	 * write instruction with bit[3] set according to address value:
	 * if addr refers to upper half of the memory array: bit[3] = 1
	 */
	FUNC4(card, PCC_SPI_IR, FUNC0(addr));
	err = FUNC3(card);
	if (err)
		goto we_spi_err;

	/* wait while write in progress */
	for (i = 0; i < PCC_WRITE_MAX_LOOP; i++) {
		/* write instruction reading the status register */
		FUNC4(card, PCC_SPI_IR, PCC_EEP_RDSR);
		err = FUNC3(card);
		if (err)
			goto we_spi_err;

		/* get status register value and check write in progress bit */
		status = FUNC2(card, PCC_SPI_DIR);
		if (!(status & PCC_EEP_SR_WIP))
			break;
	}

	if (i >= PCC_WRITE_MAX_LOOP) {
		FUNC1(&card->pdev->dev,
			"stop waiting for write in eeprom to complete\n");
		return -EIO;
	}

	/* write instruction disabling write */
	FUNC4(card, PCC_SPI_IR, PCC_EEP_WRDI);
	err = FUNC3(card);
	if (err)
		goto we_spi_err;

	return 0;

we_spi_err:
	FUNC1(&card->pdev->dev,
		"stop waiting (spi engine always busy) err %d\n", err);

	return err;
}