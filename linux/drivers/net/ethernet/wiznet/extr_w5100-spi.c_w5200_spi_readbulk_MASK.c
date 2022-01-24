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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct w5200_spi_priv {int* cmd_buf; int /*<<< orphan*/  cmd_lock; } ;
struct spi_transfer {int* tx_buf; int len; int /*<<< orphan*/ * rx_buf; } ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct spi_device*,struct spi_transfer*,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC4 (int /*<<< orphan*/ ) ; 
 struct w5200_spi_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev, u32 addr, u8 *buf,
			      int len)
{
	struct spi_device *spi = FUNC4(ndev->dev.parent);
	struct w5200_spi_priv *spi_priv = FUNC5(ndev);
	struct spi_transfer xfer[] = {
		{
			.tx_buf = spi_priv->cmd_buf,
			.len = sizeof(spi_priv->cmd_buf),
		},
		{
			.rx_buf = buf,
			.len = len,
		},
	};
	int ret;

	FUNC1(&spi_priv->cmd_lock);

	spi_priv->cmd_buf[0] = addr >> 8;
	spi_priv->cmd_buf[1] = addr;
	spi_priv->cmd_buf[2] = len >> 8;
	spi_priv->cmd_buf[3] = len;
	ret = FUNC3(spi, xfer, FUNC0(xfer));

	FUNC2(&spi_priv->cmd_lock);

	return ret;
}