#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int start; int /*<<< orphan*/  end; } ;
struct pci_dev {int /*<<< orphan*/  dev; struct pci_bus* bus; } ;
struct pci_bus {int dummy; } ;
struct lpc_ich_priv {size_t chipset; } ;
struct intel_spi_boardinfo {int type; int writeable; } ;
struct TYPE_5__ {int spi_type; } ;
struct TYPE_4__ {int pdata_size; struct intel_spi_boardinfo* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCR ; 
 int BCR_WPD ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  INTEL_SPI_BXT 130 
#define  INTEL_SPI_BYT 129 
#define  INTEL_SPI_LPT 128 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int /*<<< orphan*/  RCBABASE ; 
 int SPIBASE_APL_SZ ; 
 int /*<<< orphan*/  SPIBASE_BYT ; 
 int SPIBASE_BYT_EN ; 
 int SPIBASE_BYT_SZ ; 
 int SPIBASE_LPT ; 
 int SPIBASE_LPT_SZ ; 
 struct intel_spi_boardinfo* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* intel_spi_res ; 
 TYPE_3__* lpc_chipset_info ; 
 TYPE_1__ lpc_ich_spi_cell ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*,unsigned int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*,unsigned int,int,int) ; 
 struct lpc_ich_priv* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *dev)
{
	struct lpc_ich_priv *priv = FUNC5(dev);
	struct resource *res = &intel_spi_res[0];
	struct intel_spi_boardinfo *info;
	u32 spi_base, rcba, bcr;

	info = FUNC1(&dev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->type = lpc_chipset_info[priv->chipset].spi_type;

	switch (info->type) {
	case INTEL_SPI_BYT:
		FUNC6(dev, SPIBASE_BYT, &spi_base);
		if (spi_base & SPIBASE_BYT_EN) {
			res->start = spi_base & ~(SPIBASE_BYT_SZ - 1);
			res->end = res->start + SPIBASE_BYT_SZ - 1;
		}
		break;

	case INTEL_SPI_LPT:
		FUNC6(dev, RCBABASE, &rcba);
		if (rcba & 1) {
			spi_base = FUNC7(rcba, SPIBASE_LPT_SZ);
			res->start = spi_base + SPIBASE_LPT;
			res->end = res->start + SPIBASE_LPT_SZ - 1;

			FUNC6(dev, BCR, &bcr);
			info->writeable = !!(bcr & BCR_WPD);
		}
		break;

	case INTEL_SPI_BXT: {
		unsigned int p2sb = FUNC0(13, 0);
		unsigned int spi = FUNC0(13, 2);
		struct pci_bus *bus = dev->bus;

		/*
		 * The P2SB is hidden by BIOS and we need to unhide it in
		 * order to read BAR of the SPI flash device. Once that is
		 * done we hide it again.
		 */
		FUNC4(bus, p2sb, 0xe1, 0x0);
		FUNC3(bus, spi, PCI_BASE_ADDRESS_0,
					  &spi_base);
		if (spi_base != ~0) {
			res->start = spi_base & 0xfffffff0;
			res->end = res->start + SPIBASE_APL_SZ - 1;

			FUNC3(bus, spi, BCR, &bcr);
			info->writeable = !!(bcr & BCR_WPD);
		}

		FUNC4(bus, p2sb, 0xe1, 0x1);
		break;
	}

	default:
		return -EINVAL;
	}

	if (!res->start)
		return -ENODEV;

	lpc_ich_spi_cell.platform_data = info;
	lpc_ich_spi_cell.pdata_size = sizeof(*info);

	return FUNC2(&dev->dev, PLATFORM_DEVID_NONE,
			       &lpc_ich_spi_cell, 1, NULL, 0, NULL);
}