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
typedef  int u32 ;
typedef  int /*<<< orphan*/  t ;
struct vsc73xx_spi {int /*<<< orphan*/  lock; int /*<<< orphan*/  spi; } ;
struct vsc73xx {struct vsc73xx_spi* priv; } ;
struct spi_transfer {int* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VSC73XX_CMD_SPI_MODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8(struct vsc73xx *vsc, u8 block, u8 subblock, u8 reg,
			     u32 val)
{
	struct vsc73xx_spi *vsc_spi = vsc->priv;
	struct spi_transfer t[2];
	struct spi_message m;
	u8 cmd[2];
	u8 buf[4];
	int ret;

	if (!FUNC6(block, subblock))
		return -EINVAL;

	FUNC4(&m);

	FUNC0(&t, 0, sizeof(t));

	t[0].tx_buf = cmd;
	t[0].len = sizeof(cmd);
	FUNC3(&t[0], &m);

	t[1].tx_buf = buf;
	t[1].len = sizeof(buf);
	FUNC3(&t[1], &m);

	cmd[0] = FUNC7(VSC73XX_CMD_SPI_MODE_WRITE, block, subblock);
	cmd[1] = reg;

	buf[0] = (val >> 24) & 0xff;
	buf[1] = (val >> 16) & 0xff;
	buf[2] = (val >> 8) & 0xff;
	buf[3] = val & 0xff;

	FUNC1(&vsc_spi->lock);
	ret = FUNC5(vsc_spi->spi, &m);
	FUNC2(&vsc_spi->lock);

	return ret;
}