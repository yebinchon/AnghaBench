#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct device* parent; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct TYPE_5__ {struct ieee80211_hw* hw; } ;
struct p54p_priv {int /*<<< orphan*/  fw_loaded; struct firmware const* firmware; struct pci_dev* pdev; TYPE_1__ common; } ;
struct ieee80211_hw {int dummy; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 int FUNC6 (struct ieee80211_hw*,TYPE_2__*) ; 
 int FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC10(const struct firmware *fw,
				void *context)
{
	struct p54p_priv *priv = context;
	struct ieee80211_hw *dev = priv->common.hw;
	struct pci_dev *pdev = priv->pdev;
	int err;

	if (!fw) {
		FUNC1(&pdev->dev, "Cannot find firmware (isl3886pci)\n");
		err = -ENOENT;
		goto out;
	}

	priv->firmware = fw;

	err = FUNC7(dev);
	if (err)
		goto out;
	err = FUNC5(dev);
	FUNC8(dev);
	if (err)
		goto out;

	err = FUNC6(dev, &pdev->dev);
	if (err)
		goto out;

out:

	FUNC0(&priv->fw_loaded);

	if (err) {
		struct device *parent = pdev->dev.parent;

		if (parent)
			FUNC2(parent);

		/*
		 * This will indirectly result in a call to p54p_remove.
		 * Hence, we don't need to bother with freeing any
		 * allocated ressources at all.
		 */
		FUNC3(&pdev->dev);

		if (parent)
			FUNC4(parent);
	}

	FUNC9(pdev);
}