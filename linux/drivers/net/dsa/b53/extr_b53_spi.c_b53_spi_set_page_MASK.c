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
typedef  int /*<<< orphan*/  txbuf ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int B53_SPI_CMD_NORMAL ; 
 int B53_SPI_CMD_WRITE ; 
 int B53_SPI_PAGE_SELECT ; 
 int FUNC0 (struct spi_device*,int*,int) ; 

__attribute__((used)) static inline int FUNC1(struct spi_device *spi, u8 page)
{
	u8 txbuf[3];

	txbuf[0] = B53_SPI_CMD_NORMAL | B53_SPI_CMD_WRITE;
	txbuf[1] = B53_SPI_PAGE_SELECT;
	txbuf[2] = page;

	return FUNC0(spi, txbuf, sizeof(txbuf));
}