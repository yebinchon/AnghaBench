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
typedef  int u32 ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int W5100_SPI_WRITE_OPCODE ; 
 int FUNC0 (struct spi_device*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev, u32 addr, u8 data)
{
	struct spi_device *spi = FUNC1(ndev->dev.parent);
	u8 cmd[4] = { W5100_SPI_WRITE_OPCODE, addr >> 8, addr & 0xff, data};

	return FUNC0(spi, cmd, sizeof(cmd), NULL, 0);
}