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
typedef  int uint ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rx_fifo_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ksz_port {int dummy; } ;
struct ksz_hw {int intr_mask; scalar_t__ io; int /*<<< orphan*/  features; } ;
struct dev_priv {struct ksz_port port; struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  hwlock; int /*<<< orphan*/  rx_tasklet; int /*<<< orphan*/  tx_tasklet; struct ksz_hw hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DMA_TX_ENABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int KS884X_INT_PHY ; 
 int KS884X_INT_RX ; 
 int KS884X_INT_RX_OVERRUN ; 
 int KS884X_INT_RX_STOPPED ; 
 int KS884X_INT_TX_MASK ; 
 int KS884X_INT_TX_STOPPED ; 
 scalar_t__ KS_DMA_TX_CTRL ; 
 int /*<<< orphan*/  LINK_INT_WORKING ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_hw*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_hw*) ; 
 scalar_t__ FUNC6 (int) ; 
 struct dev_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ksz_port*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *dev_id)
{
	uint int_enable = 0;
	struct net_device *dev = (struct net_device *) dev_id;
	struct dev_priv *priv = FUNC7(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_hw *hw = &hw_priv->hw;

	FUNC11(&hw_priv->hwlock);

	FUNC4(hw, &int_enable);

	/* Not our interrupt! */
	if (!int_enable) {
		FUNC12(&hw_priv->hwlock);
		return IRQ_NONE;
	}

	do {
		FUNC1(hw, int_enable);
		int_enable &= hw->intr_mask;

		if (FUNC14(int_enable & KS884X_INT_TX_MASK)) {
			FUNC2(hw, KS884X_INT_TX_MASK);
			FUNC13(&hw_priv->tx_tasklet);
		}

		if (FUNC6(int_enable & KS884X_INT_RX)) {
			FUNC2(hw, KS884X_INT_RX);
			FUNC13(&hw_priv->rx_tasklet);
		}

		if (FUNC14(int_enable & KS884X_INT_RX_OVERRUN)) {
			dev->stats.rx_fifo_errors++;
			FUNC5(hw);
		}

		if (FUNC14(int_enable & KS884X_INT_PHY)) {
			struct ksz_port *port = &priv->port;

			hw->features |= LINK_INT_WORKING;
			FUNC8(port);
		}

		if (FUNC14(int_enable & KS884X_INT_RX_STOPPED)) {
			FUNC0(hw);
			break;
		}

		if (FUNC14(int_enable & KS884X_INT_TX_STOPPED)) {
			u32 data;

			hw->intr_mask &= ~KS884X_INT_TX_STOPPED;
			FUNC9("Tx stopped\n");
			data = FUNC10(hw->io + KS_DMA_TX_CTRL);
			if (!(data & DMA_TX_ENABLE))
				FUNC9("Tx disabled\n");
			break;
		}
	} while (0);

	FUNC3(hw);

	FUNC12(&hw_priv->hwlock);

	return IRQ_HANDLED;
}