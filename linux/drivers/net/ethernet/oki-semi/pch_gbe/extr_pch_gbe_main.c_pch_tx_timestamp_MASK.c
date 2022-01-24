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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct skb_shared_info {int tx_flags; } ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct pch_gbe_adapter {struct pci_dev* ptp_pdev; scalar_t__ hwts_tx_en; } ;
typedef  int /*<<< orphan*/  shhwtstamps ;

/* Variables and functions */
 int SKBTX_HW_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 int TX_SNAPSHOT_LOCKED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct skb_shared_info* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct pch_gbe_adapter *adapter, struct sk_buff *skb)
{
	struct skb_shared_hwtstamps shhwtstamps;
	struct pci_dev *pdev;
	struct skb_shared_info *shtx;
	u64 ns;
	u32 cnt, val;

	shtx = FUNC6(skb);
	if (FUNC0(!(shtx->tx_flags & SKBTX_HW_TSTAMP && adapter->hwts_tx_en)))
		return;

	shtx->tx_flags |= SKBTX_IN_PROGRESS;

	/* Get ieee1588's dev information */
	pdev = adapter->ptp_pdev;

	/*
	 * This really stinks, but we have to poll for the Tx time stamp.
	 */
	for (cnt = 0; cnt < 100; cnt++) {
		val = FUNC3(pdev);
		if (val & TX_SNAPSHOT_LOCKED)
			break;
		FUNC8(1);
	}
	if (!(val & TX_SNAPSHOT_LOCKED)) {
		shtx->tx_flags &= ~SKBTX_IN_PROGRESS;
		return;
	}

	ns = FUNC5(pdev);

	FUNC1(&shhwtstamps, 0, sizeof(shhwtstamps));
	shhwtstamps.hwtstamp = FUNC2(ns);
	FUNC7(skb, &shhwtstamps);

	FUNC4(pdev, TX_SNAPSHOT_LOCKED);
}