#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  t ;
struct spi_transfer {int len; char* rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct TYPE_3__ {unsigned int byte_len; int flags; } ;
struct at25_data {int addrlen; int /*<<< orphan*/  lock; TYPE_2__* spi; TYPE_1__ chip; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT25_INSTR_BIT3 ; 
 int /*<<< orphan*/  AT25_READ ; 
 int EE_INSTR_BIT3_IS_ADDR ; 
 int /*<<< orphan*/  EE_MAXADDRLEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (TYPE_2__*,struct spi_message*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(void *priv, unsigned int offset,
			void *val, size_t count)
{
	struct at25_data *at25 = priv;
	char *buf = val;
	u8			command[EE_MAXADDRLEN + 1];
	u8			*cp;
	ssize_t			status;
	struct spi_transfer	t[2];
	struct spi_message	m;
	u8			instr;

	if (FUNC7(offset >= at25->chip.byte_len))
		return -EINVAL;
	if ((offset + count) > at25->chip.byte_len)
		count = at25->chip.byte_len - offset;
	if (FUNC7(!count))
		return -EINVAL;

	cp = command;

	instr = AT25_READ;
	if (at25->chip.flags & EE_INSTR_BIT3_IS_ADDR)
		if (offset >= (1U << (at25->addrlen * 8)))
			instr |= AT25_INSTR_BIT3;
	*cp++ = instr;

	/* 8/16/24-bit address is written MSB first */
	switch (at25->addrlen) {
	default:	/* case 3 */
		*cp++ = offset >> 16;
		/* fall through */
	case 2:
		*cp++ = offset >> 8;
		/* fall through */
	case 1:
	case 0:	/* can't happen: for better codegen */
		*cp++ = offset >> 0;
	}

	FUNC5(&m);
	FUNC1(t, 0, sizeof(t));

	t[0].tx_buf = command;
	t[0].len = at25->addrlen + 1;
	FUNC4(&t[0], &m);

	t[1].rx_buf = buf;
	t[1].len = count;
	FUNC4(&t[1], &m);

	FUNC2(&at25->lock);

	/* Read it all at once.
	 *
	 * REVISIT that's potentially a problem with large chips, if
	 * other devices on the bus need to be accessed regularly or
	 * this chip is clocked very slowly
	 */
	status = FUNC6(at25->spi, &m);
	FUNC0(&at25->spi->dev, "read %zu bytes at %d --> %zd\n",
		count, offset, status);

	FUNC3(&at25->lock);
	return status;
}