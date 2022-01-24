#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct p54p_ring_control {struct p54p_desc* tx_mgmt; struct p54p_desc* tx_data; struct p54p_desc* rx_mgmt; struct p54p_desc* rx_data; } ;
struct TYPE_3__ {scalar_t__ rx_mtu; } ;
struct p54p_priv {int /*<<< orphan*/ ** tx_buf_mgmt; TYPE_2__* pdev; int /*<<< orphan*/ ** tx_buf_data; int /*<<< orphan*/ ** rx_buf_mgmt; TYPE_1__ common; int /*<<< orphan*/ ** rx_buf_data; int /*<<< orphan*/  tasklet; struct p54p_ring_control* ring_control; } ;
struct p54p_desc {int /*<<< orphan*/  len; scalar_t__ host_addr; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ISL38XX_DEV_INT_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_int ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  int_enable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct p54p_ring_control*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct ieee80211_hw *dev)
{
	struct p54p_priv *priv = dev->priv;
	struct p54p_ring_control *ring_control = priv->ring_control;
	unsigned int i;
	struct p54p_desc *desc;

	FUNC2(int_enable, FUNC3(0));
	FUNC1(int_enable);
	FUNC12(10);

	FUNC4(priv->pdev->irq, dev);

	FUNC11(&priv->tasklet);

	FUNC2(dev_int, FUNC3(ISL38XX_DEV_INT_RESET));

	for (i = 0; i < FUNC0(priv->rx_buf_data); i++) {
		desc = &ring_control->rx_data[i];
		if (desc->host_addr)
			FUNC10(priv->pdev,
					 FUNC7(desc->host_addr),
					 priv->common.rx_mtu + 32,
					 PCI_DMA_FROMDEVICE);
		FUNC5(priv->rx_buf_data[i]);
		priv->rx_buf_data[i] = NULL;
	}

	for (i = 0; i < FUNC0(priv->rx_buf_mgmt); i++) {
		desc = &ring_control->rx_mgmt[i];
		if (desc->host_addr)
			FUNC10(priv->pdev,
					 FUNC7(desc->host_addr),
					 priv->common.rx_mtu + 32,
					 PCI_DMA_FROMDEVICE);
		FUNC5(priv->rx_buf_mgmt[i]);
		priv->rx_buf_mgmt[i] = NULL;
	}

	for (i = 0; i < FUNC0(priv->tx_buf_data); i++) {
		desc = &ring_control->tx_data[i];
		if (desc->host_addr)
			FUNC10(priv->pdev,
					 FUNC7(desc->host_addr),
					 FUNC6(desc->len),
					 PCI_DMA_TODEVICE);

		FUNC9(dev, priv->tx_buf_data[i]);
		priv->tx_buf_data[i] = NULL;
	}

	for (i = 0; i < FUNC0(priv->tx_buf_mgmt); i++) {
		desc = &ring_control->tx_mgmt[i];
		if (desc->host_addr)
			FUNC10(priv->pdev,
					 FUNC7(desc->host_addr),
					 FUNC6(desc->len),
					 PCI_DMA_TODEVICE);

		FUNC9(dev, priv->tx_buf_mgmt[i]);
		priv->tx_buf_mgmt[i] = NULL;
	}

	FUNC8(ring_control, 0, sizeof(*ring_control));
}