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
struct kvaser_pciefd {TYPE_1__* pci; scalar_t__ reg_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 scalar_t__ KVASER_PCIEFD_SPI_CTRL_REG ; 
 int /*<<< orphan*/  KVASER_PCIEFD_SPI_RRDY ; 
 scalar_t__ KVASER_PCIEFD_SPI_RX_REG ; 
 scalar_t__ KVASER_PCIEFD_SPI_SSEL_REG ; 
 int /*<<< orphan*/  KVASER_PCIEFD_SPI_TMT ; 
 int /*<<< orphan*/  KVASER_PCIEFD_SPI_TRDY ; 
 scalar_t__ KVASER_PCIEFD_SPI_TX_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (struct kvaser_pciefd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct kvaser_pciefd *pcie, const u8 *tx,
				 u32 tx_len, u8 *rx, u32 rx_len)
{
	int c;

	FUNC3(FUNC0(0), pcie->reg_base + KVASER_PCIEFD_SPI_SSEL_REG);
	FUNC3(FUNC0(10), pcie->reg_base + KVASER_PCIEFD_SPI_CTRL_REG);
	FUNC2(pcie->reg_base + KVASER_PCIEFD_SPI_RX_REG);

	c = tx_len;
	while (c--) {
		if (FUNC4(pcie, KVASER_PCIEFD_SPI_TRDY))
			return -EIO;

		FUNC3(*tx++, pcie->reg_base + KVASER_PCIEFD_SPI_TX_REG);

		if (FUNC4(pcie, KVASER_PCIEFD_SPI_RRDY))
			return -EIO;

		FUNC2(pcie->reg_base + KVASER_PCIEFD_SPI_RX_REG);
	}

	c = rx_len;
	while (c-- > 0) {
		if (FUNC4(pcie, KVASER_PCIEFD_SPI_TRDY))
			return -EIO;

		FUNC3(0, pcie->reg_base + KVASER_PCIEFD_SPI_TX_REG);

		if (FUNC4(pcie, KVASER_PCIEFD_SPI_RRDY))
			return -EIO;

		*rx++ = FUNC2(pcie->reg_base + KVASER_PCIEFD_SPI_RX_REG);
	}

	if (FUNC4(pcie, KVASER_PCIEFD_SPI_TMT))
		return -EIO;

	FUNC3(0, pcie->reg_base + KVASER_PCIEFD_SPI_CTRL_REG);

	if (c != -1) {
		FUNC1(&pcie->pci->dev, "Flash SPI transfer failed\n");
		return -EIO;
	}

	return 0;
}