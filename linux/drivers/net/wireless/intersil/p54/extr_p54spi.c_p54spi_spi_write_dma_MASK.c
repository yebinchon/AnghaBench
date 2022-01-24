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
struct p54s_priv {TYPE_1__* spi; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  HOST_ALLOWED ; 
 int /*<<< orphan*/  SPI_ADRS_DMA_DATA ; 
 int /*<<< orphan*/  SPI_ADRS_DMA_WRITE_BASE ; 
 int /*<<< orphan*/  SPI_ADRS_DMA_WRITE_CTRL ; 
 int /*<<< orphan*/  SPI_ADRS_DMA_WRITE_LEN ; 
 size_t SPI_DMA_WRITE_CTRL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct p54s_priv*,int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct p54s_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct p54s_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct p54s_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct p54s_priv *priv, __le32 base,
				const void *buf, size_t len)
{
	if (!FUNC3(priv, SPI_ADRS_DMA_WRITE_CTRL, HOST_ALLOWED)) {
		FUNC1(&priv->spi->dev, "spi_write_dma not allowed "
			"to DMA write.\n");
		return -EAGAIN;
	}

	FUNC4(priv, SPI_ADRS_DMA_WRITE_CTRL,
		       FUNC0(SPI_DMA_WRITE_CTRL_ENABLE));

	FUNC4(priv, SPI_ADRS_DMA_WRITE_LEN, FUNC0(len));
	FUNC5(priv, SPI_ADRS_DMA_WRITE_BASE, base);
	FUNC2(priv, SPI_ADRS_DMA_DATA, buf, len);
	return 0;
}