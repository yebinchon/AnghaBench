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
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct adm8211_priv* priv; } ;
struct adm8211_priv {int /*<<< orphan*/  mode; TYPE_1__* pdev; int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ADM8211_IER_AIE ; 
 int ADM8211_IER_GPTIE ; 
 int ADM8211_IER_NIE ; 
 int ADM8211_IER_RCIE ; 
 int ADM8211_IER_TCIE ; 
 int ADM8211_IER_TDUIE ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  RDR ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  adm8211_interrupt ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_hw *dev)
{
	struct adm8211_priv *priv = dev->priv;
	int retval;

	/* Power up MAC and RF chips */
	retval = FUNC2(dev);
	if (retval) {
		FUNC8(dev->wiphy, "hardware reset failed\n");
		goto fail;
	}

	retval = FUNC3(dev);
	if (retval) {
		FUNC8(dev->wiphy, "failed to initialize rings\n");
		goto fail;
	}

	/* Init hardware */
	FUNC1(dev);
	FUNC4(dev, priv->channel);

	retval = FUNC7(priv->pdev->irq, adm8211_interrupt,
			     IRQF_SHARED, "adm8211", dev);
	if (retval) {
		FUNC8(dev->wiphy, "failed to register IRQ handler\n");
		goto fail;
	}

	FUNC0(IER, ADM8211_IER_NIE | ADM8211_IER_AIE |
			       ADM8211_IER_RCIE | ADM8211_IER_TCIE |
			       ADM8211_IER_TDUIE | ADM8211_IER_GPTIE);
	priv->mode = NL80211_IFTYPE_MONITOR;
	FUNC6(dev);
	FUNC0(RDR, 0);

	FUNC5(dev, 100, 10);
	return 0;

fail:
	return retval;
}