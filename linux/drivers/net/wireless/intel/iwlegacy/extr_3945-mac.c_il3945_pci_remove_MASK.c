#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {int /*<<< orphan*/  irq; TYPE_1__ dev; } ;
struct TYPE_6__ {scalar_t__ bd; } ;
struct TYPE_5__ {int /*<<< orphan*/  rfkill_poll; } ;
struct il_priv {int /*<<< orphan*/  hw; scalar_t__ beacon_skb; int /*<<< orphan*/  scan_cmd; int /*<<< orphan*/  hw_base; int /*<<< orphan*/ * workqueue; TYPE_3__ rxq; TYPE_2__ _3945; int /*<<< orphan*/  lock; scalar_t__ mac80211_registered; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct il_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  il3945_attribute_group ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct il_priv*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC16 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 struct il_priv* FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC30(struct pci_dev *pdev)
{
	struct il_priv *il = FUNC24(pdev);
	unsigned long flags;

	if (!il)
		return;

	FUNC0("*** UNLOAD DRIVER ***\n");

	FUNC15(il);

	FUNC26(S_EXIT_PENDING, &il->status);

	FUNC19(il);

	if (il->mac80211_registered) {
		FUNC7(il->hw);
		il->mac80211_registered = 0;
	} else {
		FUNC9(il);
	}

	/*
	 * Make sure device is reset to low power before unloading driver.
	 * This may be redundant with il_down(), but there are paths to
	 * run il_down() without calling apm_ops.stop(), and there are
	 * paths to avoid running il_down() at all before leaving driver.
	 * This (inexpensive) call *makes sure* device is reset.
	 */
	FUNC14(il);

	/* make sure we flush any pending irq or
	 * tasklet for the driver
	 */
	FUNC27(&il->lock, flags);
	FUNC16(il);
	FUNC28(&il->lock, flags);

	FUNC12(il);

	FUNC29(&pdev->dev.kobj, &il3945_attribute_group);

	FUNC1(&il->_3945.rfkill_poll);

	FUNC8(il);

	if (il->rxq.bd)
		FUNC11(il, &il->rxq);
	FUNC10(il);

	FUNC13(il);

	/*netif_stop_queue(dev); */
	FUNC4(il->workqueue);

	/* ieee80211_unregister_hw calls il3945_mac_stop, which flushes
	 * il->workqueue... so we can't take down the workqueue
	 * until now... */
	FUNC2(il->workqueue);
	il->workqueue = NULL;

	FUNC5(pdev->irq, il);
	FUNC23(pdev);

	FUNC20(il->hw_base);
	FUNC25(pdev);
	FUNC22(pdev);

	FUNC17(il);
	FUNC18(il);
	FUNC21(il->scan_cmd);
	if (il->beacon_skb)
		FUNC3(il->beacon_skb);

	FUNC6(il->hw);
}