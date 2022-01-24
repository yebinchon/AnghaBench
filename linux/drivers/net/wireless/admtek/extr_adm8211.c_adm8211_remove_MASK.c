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
struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int rx_ring_size; int tx_ring_size; int /*<<< orphan*/  map; int /*<<< orphan*/  eeprom; int /*<<< orphan*/  rx_buffers; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  rx_ring; } ;
struct adm8211_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct ieee80211_hw *dev = FUNC5(pdev);
	struct adm8211_priv *priv;

	if (!dev)
		return;

	FUNC1(dev);

	priv = dev->priv;

	FUNC4(pdev,
			    sizeof(struct adm8211_desc) * priv->rx_ring_size +
			    sizeof(struct adm8211_desc) * priv->tx_ring_size,
			    priv->rx_ring, priv->rx_ring_dma);

	FUNC2(priv->rx_buffers);
	FUNC2(priv->eeprom);
	FUNC6(pdev, priv->map);
	FUNC7(pdev);
	FUNC3(pdev);
	FUNC0(dev);
}