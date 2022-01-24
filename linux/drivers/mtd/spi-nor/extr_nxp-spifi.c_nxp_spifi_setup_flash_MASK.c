#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct spi_nor_hwcaps {int mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtd; int /*<<< orphan*/  write_reg; int /*<<< orphan*/  read_reg; int /*<<< orphan*/  erase; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct nxp_spifi* priv; int /*<<< orphan*/  dev; } ;
struct nxp_spifi {int /*<<< orphan*/  dev; TYPE_1__ nor; scalar_t__ io_base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SNOR_HWCAPS_PP ; 
 int SNOR_HWCAPS_READ ; 
 int SNOR_HWCAPS_READ_1_1_2 ; 
 int SNOR_HWCAPS_READ_1_1_4 ; 
 int SNOR_HWCAPS_READ_FAST ; 
 scalar_t__ SPIFI_CTRL ; 
 int FUNC0 (int) ; 
 int SPIFI_CTRL_DUAL ; 
 int SPIFI_CTRL_FBCLK ; 
 int SPIFI_CTRL_MODE3 ; 
 int FUNC1 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
#define  SPI_MODE_0 129 
#define  SPI_MODE_3 128 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  nxp_spifi_erase ; 
 int /*<<< orphan*/  nxp_spifi_read ; 
 int /*<<< orphan*/  nxp_spifi_read_reg ; 
 int FUNC5 (struct nxp_spifi*) ; 
 int /*<<< orphan*/  nxp_spifi_write ; 
 int /*<<< orphan*/  nxp_spifi_write_reg ; 
 scalar_t__ FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char*,int*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,struct spi_nor_hwcaps*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct nxp_spifi *spifi,
				 struct device_node *np)
{
	struct spi_nor_hwcaps hwcaps = {
		.mask = SNOR_HWCAPS_READ |
			SNOR_HWCAPS_READ_FAST |
			SNOR_HWCAPS_PP,
	};
	u32 ctrl, property;
	u16 mode = 0;
	int ret;

	if (!FUNC7(np, "spi-rx-bus-width", &property)) {
		switch (property) {
		case 1:
			break;
		case 2:
			mode |= SPI_RX_DUAL;
			break;
		case 4:
			mode |= SPI_RX_QUAD;
			break;
		default:
			FUNC2(spifi->dev, "unsupported rx-bus-width\n");
			return -EINVAL;
		}
	}

	if (FUNC6(np, "spi-cpha", NULL))
		mode |= SPI_CPHA;

	if (FUNC6(np, "spi-cpol", NULL))
		mode |= SPI_CPOL;

	/* Setup control register defaults */
	ctrl = FUNC1(1000) |
	       FUNC0(15) |
	       SPIFI_CTRL_FBCLK;

	if (mode & SPI_RX_DUAL) {
		ctrl |= SPIFI_CTRL_DUAL;
		hwcaps.mask |= SNOR_HWCAPS_READ_1_1_2;
	} else if (mode & SPI_RX_QUAD) {
		ctrl &= ~SPIFI_CTRL_DUAL;
		hwcaps.mask |= SNOR_HWCAPS_READ_1_1_4;
	} else {
		ctrl |= SPIFI_CTRL_DUAL;
	}

	switch (mode & (SPI_CPHA | SPI_CPOL)) {
	case SPI_MODE_0:
		ctrl &= ~SPIFI_CTRL_MODE3;
		break;
	case SPI_MODE_3:
		ctrl |= SPIFI_CTRL_MODE3;
		break;
	default:
		FUNC2(spifi->dev, "only mode 0 and 3 supported\n");
		return -EINVAL;
	}

	FUNC10(ctrl, spifi->io_base + SPIFI_CTRL);

	spifi->nor.dev   = spifi->dev;
	FUNC9(&spifi->nor, np);
	spifi->nor.priv  = spifi;
	spifi->nor.read  = nxp_spifi_read;
	spifi->nor.write = nxp_spifi_write;
	spifi->nor.erase = nxp_spifi_erase;
	spifi->nor.read_reg  = nxp_spifi_read_reg;
	spifi->nor.write_reg = nxp_spifi_write_reg;

	/*
	 * The first read on a hard reset isn't reliable so do a
	 * dummy read of the id before calling spi_nor_scan().
	 * The reason for this problem is unknown.
	 *
	 * The official NXP spifilib uses more or less the same
	 * workaround that is applied here by reading the device
	 * id multiple times.
	 */
	FUNC4(&spifi->nor);

	ret = FUNC8(&spifi->nor, NULL, &hwcaps);
	if (ret) {
		FUNC2(spifi->dev, "device scan failed\n");
		return ret;
	}

	ret = FUNC5(spifi);
	if (ret) {
		FUNC2(spifi->dev, "memory command setup failed\n");
		return ret;
	}

	ret = FUNC3(&spifi->nor.mtd, NULL, 0);
	if (ret) {
		FUNC2(spifi->dev, "mtd device parse failed\n");
		return ret;
	}

	return 0;
}