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
typedef  unsigned int u16 ;
typedef  int /*<<< orphan*/  t ;
struct spi_transfer {char* tx_buf; int len; int bits_per_word; } ;
struct spi_message {int dummy; } ;
struct eeprom_93xx46_dev {unsigned int addrlen; TYPE_1__* spi; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (TYPE_1__*,struct spi_message*) ; 

__attribute__((used)) static ssize_t
FUNC6(struct eeprom_93xx46_dev *edev,
			 const char *buf, unsigned off)
{
	struct spi_message m;
	struct spi_transfer t[2];
	int bits, data_len, ret;
	u16 cmd_addr;

	cmd_addr = OP_WRITE << edev->addrlen;

	if (edev->addrlen == 7) {
		cmd_addr |= off & 0x7f;
		bits = 10;
		data_len = 1;
	} else {
		cmd_addr |= (off >> 1) & 0x3f;
		bits = 9;
		data_len = 2;
	}

	FUNC0(&edev->spi->dev, "write cmd 0x%x\n", cmd_addr);

	FUNC4(&m);
	FUNC2(t, 0, sizeof(t));

	t[0].tx_buf = (char *)&cmd_addr;
	t[0].len = 2;
	t[0].bits_per_word = bits;
	FUNC3(&t[0], &m);

	t[1].tx_buf = buf;
	t[1].len = data_len;
	t[1].bits_per_word = 8;
	FUNC3(&t[1], &m);

	ret = FUNC5(edev->spi, &m);
	/* have to wait program cycle time Twc ms */
	FUNC1(6);
	return ret;
}