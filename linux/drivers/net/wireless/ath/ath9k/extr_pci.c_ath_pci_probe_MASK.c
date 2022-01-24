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
typedef  int u8 ;
typedef  int u32 ;
struct pci_device_id {int /*<<< orphan*/  device; int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  irq; scalar_t__ mem; TYPE_1__* sc_ah; int /*<<< orphan*/  driver_data; int /*<<< orphan*/ * dev; struct ieee80211_hw* hw; } ;
typedef  int /*<<< orphan*/  hw_name ;
struct TYPE_2__ {int msi_enabled; scalar_t__ msi_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int L1_CACHE_BYTES ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ath9k_ops ; 
 scalar_t__ ath9k_use_msi ; 
 int /*<<< orphan*/  ath_isr ; 
 int /*<<< orphan*/  ath_pci_bus_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ath_softc*) ; 
 struct ieee80211_hw* FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int,int*) ; 
 int FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int,int) ; 
 scalar_t__ FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__* FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,char*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct ath_softc *sc;
	struct ieee80211_hw *hw;
	u8 csz;
	u32 val;
	int ret = 0;
	char hw_name[64];
	int msi_enabled = 0;

	if (FUNC19(pdev))
		return -EIO;

	ret =  FUNC14(pdev, FUNC1(32));
	if (ret) {
		FUNC22("32-bit DMA not available\n");
		return ret;
	}

	ret = FUNC13(pdev, FUNC1(32));
	if (ret) {
		FUNC22("32-bit DMA consistent DMA enable failed\n");
		return ret;
	}

	/*
	 * Cache line size is used to size and align various
	 * structures used to communicate with the hardware.
	 */
	FUNC11(pdev, PCI_CACHE_LINE_SIZE, &csz);
	if (csz == 0) {
		/*
		 * Linux 2.4.18 (at least) writes the cache line size
		 * register as a 16-bit wide register which is wrong.
		 * We must have this setup properly for rx buffer
		 * DMA to work so force a reasonable value here if it
		 * comes up zero.
		 */
		csz = L1_CACHE_BYTES / sizeof(u32);
		FUNC17(pdev, PCI_CACHE_LINE_SIZE, csz);
	}
	/*
	 * The default setting of latency timer yields poor results,
	 * set it to the value used by other systems. It may be worth
	 * tweaking this setting more.
	 */
	FUNC17(pdev, PCI_LATENCY_TIMER, 0xa8);

	FUNC16(pdev);

	/*
	 * Disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state.
	 */
	FUNC12(pdev, 0x40, &val);
	if ((val & 0x0000ff00) != 0)
		FUNC18(pdev, 0x40, val & 0xffff00ff);

	ret = FUNC20(pdev, FUNC0(0), "ath9k");
	if (ret) {
		FUNC6(&pdev->dev, "PCI memory region reserve error\n");
		return -ENODEV;
	}

	FUNC3();
	hw = FUNC8(sizeof(struct ath_softc), &ath9k_ops);
	if (!hw) {
		FUNC6(&pdev->dev, "No memory for ieee80211_hw\n");
		return -ENOMEM;
	}

	FUNC2(hw, &pdev->dev);
	FUNC15(pdev, hw);

	sc = hw->priv;
	sc->hw = hw;
	sc->dev = &pdev->dev;
	sc->mem = FUNC21(pdev)[0];
	sc->driver_data = id->driver_data;

	if (ath9k_use_msi) {
		if (FUNC10(pdev) == 0) {
			msi_enabled = 1;
			FUNC6(&pdev->dev, "Using MSI\n");
		} else {
			FUNC6(&pdev->dev, "Using INTx\n");
		}
	}

	if (!msi_enabled)
		ret = FUNC23(pdev->irq, ath_isr, IRQF_SHARED, "ath9k", sc);
	else
		ret = FUNC23(pdev->irq, ath_isr, 0, "ath9k", sc);

	if (ret) {
		FUNC6(&pdev->dev, "request_irq failed\n");
		goto err_irq;
	}

	sc->irq = pdev->irq;

	ret = FUNC5(id->device, sc, &ath_pci_bus_ops);
	if (ret) {
		FUNC6(&pdev->dev, "Failed to initialize device\n");
		goto err_init;
	}

	sc->sc_ah->msi_enabled = msi_enabled;
	sc->sc_ah->msi_reg = 0;

	FUNC4(sc->sc_ah, hw_name, sizeof(hw_name));
	FUNC24(hw->wiphy, "%s mem=0x%lx, irq=%d\n",
		   hw_name, (unsigned long)sc->mem, pdev->irq);

	return 0;

err_init:
	FUNC7(sc->irq, sc);
err_irq:
	FUNC9(hw);
	return ret;
}