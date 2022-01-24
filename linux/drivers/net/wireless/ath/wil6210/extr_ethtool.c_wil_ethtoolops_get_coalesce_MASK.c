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
typedef  int u32 ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int rx_coalesce_usecs; } ;

/* Variables and functions */
 int BIT_DMA_ITR_RX_CNT_CTL_EN ; 
 int BIT_DMA_ITR_TX_CNT_CTL_EN ; 
 int /*<<< orphan*/  RGF_DMA_ITR_RX_CNT_CTL ; 
 int /*<<< orphan*/  RGF_DMA_ITR_RX_CNT_TRSH ; 
 int /*<<< orphan*/  RGF_DMA_ITR_TX_CNT_CTL ; 
 int /*<<< orphan*/  RGF_DMA_ITR_TX_CNT_TRSH ; 
 struct wil6210_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int FUNC2 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*) ; 
 int FUNC4 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev,
				       struct ethtool_coalesce *cp)
{
	struct wil6210_priv *wil = FUNC0(ndev);
	u32 tx_itr_en, tx_itr_val = 0;
	u32 rx_itr_en, rx_itr_val = 0;
	int ret;

	FUNC1(wil, "ethtoolops_get_coalesce\n");

	ret = FUNC2(wil);
	if (ret < 0)
		return ret;

	tx_itr_en = FUNC4(wil, RGF_DMA_ITR_TX_CNT_CTL);
	if (tx_itr_en & BIT_DMA_ITR_TX_CNT_CTL_EN)
		tx_itr_val = FUNC4(wil, RGF_DMA_ITR_TX_CNT_TRSH);

	rx_itr_en = FUNC4(wil, RGF_DMA_ITR_RX_CNT_CTL);
	if (rx_itr_en & BIT_DMA_ITR_RX_CNT_CTL_EN)
		rx_itr_val = FUNC4(wil, RGF_DMA_ITR_RX_CNT_TRSH);

	FUNC3(wil);

	cp->tx_coalesce_usecs = tx_itr_val;
	cp->rx_coalesce_usecs = rx_itr_val;
	return 0;
}