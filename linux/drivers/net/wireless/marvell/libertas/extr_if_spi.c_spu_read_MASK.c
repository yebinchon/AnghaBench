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
typedef  int u16 ;
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  delay_usecs; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct if_spi_card {unsigned int spu_port_delay; unsigned int spu_reg_delay; int /*<<< orphan*/  spi; scalar_t__ use_dummy_writes; } ;
typedef  int /*<<< orphan*/  reg_trans ;
typedef  int /*<<< orphan*/  reg_out ;
typedef  int /*<<< orphan*/  dummy_trans ;
typedef  int /*<<< orphan*/  data_trans ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int IF_SPI_READ_OPERATION_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct spi_message*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct if_spi_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct if_spi_card*) ; 

__attribute__((used)) static int FUNC10(struct if_spi_card *card, u16 reg, u8 *buf, int len)
{
	unsigned int delay;
	int err = 0;
	__le16 reg_out = FUNC2(reg | IF_SPI_READ_OPERATION_MASK);
	struct spi_message m;
	struct spi_transfer reg_trans;
	struct spi_transfer dummy_trans;
	struct spi_transfer data_trans;

	/*
	 * You must take an even number of bytes from the SPU, even if you
	 * don't care about the last one.
	 */
	FUNC0(len & 0x1);

	FUNC9(card);

	FUNC5(&m);
	FUNC3(&reg_trans, 0, sizeof(reg_trans));
	FUNC3(&dummy_trans, 0, sizeof(dummy_trans));
	FUNC3(&data_trans, 0, sizeof(data_trans));

	/* write SPU register index */
	reg_trans.tx_buf = &reg_out;
	reg_trans.len = sizeof(reg_out);
	FUNC4(&reg_trans, &m);

	delay = FUNC7(reg) ? card->spu_port_delay :
						card->spu_reg_delay;
	if (card->use_dummy_writes) {
		/* Clock in dummy cycles while the SPU fills the FIFO */
		dummy_trans.len = delay / 8;
		FUNC4(&dummy_trans, &m);
	} else {
		/* Busy-wait while the SPU fills the FIFO */
		reg_trans.delay_usecs =
			FUNC1((100 + (delay * 10)), 1000);
	}

	/* read in data */
	data_trans.rx_buf = buf;
	data_trans.len = len;
	FUNC4(&data_trans, &m);

	err = FUNC6(card->spi, &m);
	FUNC8(card);
	return err;
}