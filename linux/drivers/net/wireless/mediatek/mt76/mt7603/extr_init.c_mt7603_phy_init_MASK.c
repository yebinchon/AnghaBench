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
struct TYPE_2__ {int antenna_mask; } ;
struct mt7603_dev {void* agc3; void* agc0; TYPE_1__ mt76; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MT_TMAC_TCR ; 
 int /*<<< orphan*/  MT_TMAC_TCR_TX_STREAMS ; 
 int /*<<< orphan*/  MT_WF_RMAC_RMCR ; 
 int MT_WF_RMAC_RMCR_RX_STREAMS ; 
 int MT_WF_RMAC_RMCR_SMPS_MODE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct mt7603_dev *dev)
{
	int rx_chains = dev->mt76.antenna_mask;
	int tx_chains = FUNC2(rx_chains) - 1;

	FUNC3(dev, MT_WF_RMAC_RMCR,
		 (MT_WF_RMAC_RMCR_SMPS_MODE |
		  MT_WF_RMAC_RMCR_RX_STREAMS),
		 (FUNC0(MT_WF_RMAC_RMCR_SMPS_MODE, 3) |
		  FUNC0(MT_WF_RMAC_RMCR_RX_STREAMS, rx_chains)));

	FUNC4(dev, MT_TMAC_TCR, MT_TMAC_TCR_TX_STREAMS,
		       tx_chains);

	dev->agc0 = FUNC5(dev, FUNC1(0));
	dev->agc3 = FUNC5(dev, FUNC1(3));
}