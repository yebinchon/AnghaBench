#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct ipw2100_priv {TYPE_4__* ieee; int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  action_mutex; int /*<<< orphan*/  status; struct net_device* net_dev; } ;
struct TYPE_11__ {scalar_t__ version; } ;
struct TYPE_9__ {int /*<<< orphan*/  channels; } ;
struct TYPE_8__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_10__ {TYPE_3__ bg_band; TYPE_2__ wdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  STATUS_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipw2100_attribute_group ; 
 int /*<<< orphan*/  FUNC3 (struct ipw2100_priv*) ; 
 TYPE_5__ ipw2100_firmware ; 
 int /*<<< orphan*/  FUNC4 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipw2100_priv*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 struct ipw2100_priv* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct pci_dev *pci_dev)
{
	struct ipw2100_priv *priv = FUNC12(pci_dev);
	struct net_device *dev = priv->net_dev;

	FUNC9(&priv->action_mutex);

	priv->status &= ~STATUS_INITIALIZED;

	FUNC15(&pci_dev->dev.kobj, &ipw2100_attribute_group);

#ifdef CONFIG_PM
	if (ipw2100_firmware.version)
		ipw2100_release_firmware(priv, &ipw2100_firmware);
#endif
	/* Take down the hardware */
	FUNC3(priv);

	/* Release the mutex so that the network subsystem can
	 * complete any needed calls into the driver... */
	FUNC10(&priv->action_mutex);

	/* Unregister the device first - this results in close()
	 * being called if the device is open.  If we free storage
	 * first, then close() will crash.
	 * FIXME: remove the comment above. */
	FUNC16(dev);

	FUNC4(priv);

	FUNC5(priv);

	/* Free potential debugging firmware snapshot */
	FUNC7(priv);

	FUNC1(dev->irq, priv);

	FUNC13(pci_dev, priv->ioaddr);

	/* wiphy_unregister needs to be here, before free_libipw */
	FUNC17(priv->ieee->wdev.wiphy);
	FUNC8(priv->ieee->bg_band.channels);
	FUNC2(dev, 0);

	FUNC14(pci_dev);
	FUNC11(pci_dev);

	FUNC0("exit\n");
}