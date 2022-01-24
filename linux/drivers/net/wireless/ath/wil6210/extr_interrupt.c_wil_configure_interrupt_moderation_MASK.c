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
struct wireless_dev {scalar_t__ iftype; } ;
struct wil6210_priv {int tx_max_burst_duration; int tx_interframe_timeout; int rx_max_burst_duration; int rx_interframe_timeout; TYPE_1__* main_ndev; } ;
struct TYPE_2__ {struct wireless_dev* ieee80211_ptr; } ;

/* Variables and functions */
 int BIT_DMA_ITR_RX_CNT_CTL_CLR ; 
 int BIT_DMA_ITR_RX_CNT_CTL_EN ; 
 int BIT_DMA_ITR_RX_CNT_CTL_EXT_TIC_SEL ; 
 int BIT_DMA_ITR_RX_IDL_CNT_CTL_CLR ; 
 int BIT_DMA_ITR_RX_IDL_CNT_CTL_EN ; 
 int BIT_DMA_ITR_RX_IDL_CNT_CTL_EXT_TIC_SEL ; 
 int BIT_DMA_ITR_TX_CNT_CTL_CLR ; 
 int BIT_DMA_ITR_TX_CNT_CTL_EN ; 
 int BIT_DMA_ITR_TX_CNT_CTL_EXT_TIC_SEL ; 
 int BIT_DMA_ITR_TX_IDL_CNT_CTL_CLR ; 
 int BIT_DMA_ITR_TX_IDL_CNT_CTL_EN ; 
 int BIT_DMA_ITR_TX_IDL_CNT_CTL_EXT_TIC_SEL ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  RGF_DMA_ITR_RX_CNT_CTL ; 
 int /*<<< orphan*/  RGF_DMA_ITR_RX_CNT_TRSH ; 
 int /*<<< orphan*/  RGF_DMA_ITR_RX_IDL_CNT_CTL ; 
 int /*<<< orphan*/  RGF_DMA_ITR_RX_IDL_CNT_TRSH ; 
 int /*<<< orphan*/  RGF_DMA_ITR_TX_CNT_CTL ; 
 int /*<<< orphan*/  RGF_DMA_ITR_TX_CNT_TRSH ; 
 int /*<<< orphan*/  RGF_DMA_ITR_TX_IDL_CNT_CTL ; 
 int /*<<< orphan*/  RGF_DMA_ITR_TX_IDL_CNT_TRSH ; 
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct wil6210_priv *wil)
{
	struct wireless_dev *wdev = wil->main_ndev->ieee80211_ptr;

	FUNC0(wil, "configure_interrupt_moderation\n");

	/* disable interrupt moderation for monitor
	 * to get better timestamp precision
	 */
	if (wdev->iftype == NL80211_IFTYPE_MONITOR)
		return;

	/* Disable and clear tx counter before (re)configuration */
	FUNC2(wil, RGF_DMA_ITR_TX_CNT_CTL, BIT_DMA_ITR_TX_CNT_CTL_CLR);
	FUNC2(wil, RGF_DMA_ITR_TX_CNT_TRSH, wil->tx_max_burst_duration);
	FUNC1(wil, "set ITR_TX_CNT_TRSH = %d usec\n",
		 wil->tx_max_burst_duration);
	/* Configure TX max burst duration timer to use usec units */
	FUNC2(wil, RGF_DMA_ITR_TX_CNT_CTL,
	      BIT_DMA_ITR_TX_CNT_CTL_EN | BIT_DMA_ITR_TX_CNT_CTL_EXT_TIC_SEL);

	/* Disable and clear tx idle counter before (re)configuration */
	FUNC2(wil, RGF_DMA_ITR_TX_IDL_CNT_CTL, BIT_DMA_ITR_TX_IDL_CNT_CTL_CLR);
	FUNC2(wil, RGF_DMA_ITR_TX_IDL_CNT_TRSH, wil->tx_interframe_timeout);
	FUNC1(wil, "set ITR_TX_IDL_CNT_TRSH = %d usec\n",
		 wil->tx_interframe_timeout);
	/* Configure TX max burst duration timer to use usec units */
	FUNC2(wil, RGF_DMA_ITR_TX_IDL_CNT_CTL, BIT_DMA_ITR_TX_IDL_CNT_CTL_EN |
	      BIT_DMA_ITR_TX_IDL_CNT_CTL_EXT_TIC_SEL);

	/* Disable and clear rx counter before (re)configuration */
	FUNC2(wil, RGF_DMA_ITR_RX_CNT_CTL, BIT_DMA_ITR_RX_CNT_CTL_CLR);
	FUNC2(wil, RGF_DMA_ITR_RX_CNT_TRSH, wil->rx_max_burst_duration);
	FUNC1(wil, "set ITR_RX_CNT_TRSH = %d usec\n",
		 wil->rx_max_burst_duration);
	/* Configure TX max burst duration timer to use usec units */
	FUNC2(wil, RGF_DMA_ITR_RX_CNT_CTL,
	      BIT_DMA_ITR_RX_CNT_CTL_EN | BIT_DMA_ITR_RX_CNT_CTL_EXT_TIC_SEL);

	/* Disable and clear rx idle counter before (re)configuration */
	FUNC2(wil, RGF_DMA_ITR_RX_IDL_CNT_CTL, BIT_DMA_ITR_RX_IDL_CNT_CTL_CLR);
	FUNC2(wil, RGF_DMA_ITR_RX_IDL_CNT_TRSH, wil->rx_interframe_timeout);
	FUNC1(wil, "set ITR_RX_IDL_CNT_TRSH = %d usec\n",
		 wil->rx_interframe_timeout);
	/* Configure TX max burst duration timer to use usec units */
	FUNC2(wil, RGF_DMA_ITR_RX_IDL_CNT_CTL, BIT_DMA_ITR_RX_IDL_CNT_CTL_EN |
	      BIT_DMA_ITR_RX_IDL_CNT_CTL_EXT_TIC_SEL);
}