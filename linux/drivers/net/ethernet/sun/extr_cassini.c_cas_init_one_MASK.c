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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct net_device {int features; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; scalar_t__ dma; int /*<<< orphan*/  irq; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  name; } ;
struct cas_init_block {int /*<<< orphan*/ * rxcs; int /*<<< orphan*/ * rxds; int /*<<< orphan*/ * txds; } ;
struct cas {unsigned long casreg_len; int cas_flags; scalar_t__ phy_type; int hw_running; scalar_t__ regs; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  block_dvma; struct cas_init_block* init_block; int /*<<< orphan*/  napi; int /*<<< orphan*/ * rx_flows; int /*<<< orphan*/ * init_rxcs; int /*<<< orphan*/ * init_rxds; int /*<<< orphan*/ * init_txds; scalar_t__ timer_ticks; struct net_device* dev; int /*<<< orphan*/  link_transition; int /*<<< orphan*/  lstate; int /*<<< orphan*/  link_cntl; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  reset_task_pending_mtu; int /*<<< orphan*/  reset_task_pending_spare; int /*<<< orphan*/  reset_task_pending_all; int /*<<< orphan*/  reset_task_pending; int /*<<< orphan*/  link_timer; int /*<<< orphan*/ * stat_lock; int /*<<< orphan*/ * tx_lock; int /*<<< orphan*/  rx_spare_lock; int /*<<< orphan*/  rx_inuse_lock; int /*<<< orphan*/  lock; scalar_t__ link_transition_jiffies_valid; int /*<<< orphan*/  of_node; scalar_t__ msg_enable; scalar_t__ orig_cacheline_size; struct pci_dev* pdev; } ;

/* Variables and functions */
 int BIM_CFG_32BIT ; 
 int BIM_CFG_66MHZ ; 
 int /*<<< orphan*/  BMCR_ANENABLE ; 
 scalar_t__ CAS_DEF_MSG_ENABLE ; 
 int CAS_FLAG_NO_HW_CSUM ; 
 int CAS_FLAG_REG_PLUS ; 
 int CAS_FLAG_SATURN ; 
 int /*<<< orphan*/  CAS_MAX_MTU ; 
 int /*<<< orphan*/  CAS_MIN_MTU ; 
 scalar_t__ CAS_PHY_SERDES ; 
 scalar_t__ CAS_PREF_CACHELINE_SIZE ; 
 int /*<<< orphan*/  CAS_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  LINK_TRANSITION_LINK_DOWN ; 
 int /*<<< orphan*/  LINK_TRANSITION_UNKNOWN ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_SG ; 
 int N_RX_COMP_RINGS ; 
 int N_RX_DESC_RINGS ; 
 int N_RX_FLOWS ; 
 int N_TX_RINGS ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  PCI_COMMAND_PARITY ; 
 int /*<<< orphan*/  PCI_COMMAND_SERR ; 
 scalar_t__ REG_BIM_CFG ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ SMP_CACHE_BYTES ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cas*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct cas*) ; 
 int /*<<< orphan*/  FUNC7 (struct cas*) ; 
 int /*<<< orphan*/  FUNC8 (struct cas*) ; 
 int /*<<< orphan*/  cas_ethtool_ops ; 
 int /*<<< orphan*/  FUNC9 (struct cas*) ; 
 int /*<<< orphan*/  cas_link_timer ; 
 int /*<<< orphan*/  cas_netdev_ops ; 
 int /*<<< orphan*/  FUNC10 (struct cas*) ; 
 int /*<<< orphan*/  cas_poll ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cas_reset_task ; 
 int /*<<< orphan*/  FUNC13 (struct cas*) ; 
 int /*<<< orphan*/  FUNC14 (struct cas*) ; 
 scalar_t__ cassini_debug ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  link_down ; 
 int link_mode ; 
 int /*<<< orphan*/ * link_modes ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,char*,char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cas* FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC24 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*) ; 
 int FUNC27 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*,int,struct cas_init_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (struct pci_dev*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC33 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct pci_dev*) ; 
 int FUNC35 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC36 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC37 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct pci_dev*) ; 
 int FUNC39 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC40 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC42 (struct pci_dev*) ; 
 scalar_t__ FUNC43 (struct pci_dev*) ; 
 scalar_t__ FUNC44 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC45 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (char*,int /*<<< orphan*/ ) ; 
 int FUNC48 (scalar_t__) ; 
 scalar_t__ FUNC49 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static int FUNC53(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	static int cas_version_printed = 0;
	unsigned long casreg_len;
	struct net_device *dev;
	struct cas *cp;
	int i, err, pci_using_dac;
	u16 pci_cmd;
	u8 orig_cacheline_size = 0, cas_cacheline_size = 0;

	if (cas_version_printed++ == 0)
		FUNC46("%s", version);

	err = FUNC27(pdev);
	if (err) {
		FUNC15(&pdev->dev, "Cannot enable PCI device, aborting\n");
		return err;
	}

	if (!(FUNC36(pdev, 0) & IORESOURCE_MEM)) {
		FUNC15(&pdev->dev, "Cannot find proper PCI device "
		       "base address, aborting\n");
		err = -ENODEV;
		goto err_out_disable_pdev;
	}

	dev = FUNC3(sizeof(*cp));
	if (!dev) {
		err = -ENOMEM;
		goto err_out_disable_pdev;
	}
	FUNC2(dev, &pdev->dev);

	err = FUNC35(pdev, dev->name);
	if (err) {
		FUNC15(&pdev->dev, "Cannot obtain PCI resources, aborting\n");
		goto err_out_free_netdev;
	}
	FUNC42(pdev);

	/* we must always turn on parity response or else parity
	 * doesn't get generated properly. disable SERR/PERR as well.
	 * in addition, we want to turn MWI on.
	 */
	FUNC33(pdev, PCI_COMMAND, &pci_cmd);
	pci_cmd &= ~PCI_COMMAND_SERR;
	pci_cmd |= PCI_COMMAND_PARITY;
	FUNC45(pdev, PCI_COMMAND, pci_cmd);
	if (FUNC43(pdev))
		FUNC47("Could not enable MWI for %s\n", FUNC31(pdev));

	FUNC11(pdev);

	/*
	 * On some architectures, the default cache line size set
	 * by pci_try_set_mwi reduces perforamnce.  We have to increase
	 * it for this case.  To start, we'll print some configuration
	 * data.
	 */
#if 1
	FUNC32(pdev, PCI_CACHE_LINE_SIZE,
			     &orig_cacheline_size);
	if (orig_cacheline_size < CAS_PREF_CACHELINE_SIZE) {
		cas_cacheline_size =
			(CAS_PREF_CACHELINE_SIZE < SMP_CACHE_BYTES) ?
			CAS_PREF_CACHELINE_SIZE : SMP_CACHE_BYTES;
		if (FUNC44(pdev,
					  PCI_CACHE_LINE_SIZE,
					  cas_cacheline_size)) {
			FUNC15(&pdev->dev, "Could not set PCI cache "
			       "line size\n");
			goto err_write_cacheline;
		}
	}
#endif


	/* Configure DMA attributes. */
	if (!FUNC40(pdev, FUNC0(64))) {
		pci_using_dac = 1;
		err = FUNC39(pdev,
						  FUNC0(64));
		if (err < 0) {
			FUNC15(&pdev->dev, "Unable to obtain 64-bit DMA "
			       "for consistent allocations\n");
			goto err_out_free_res;
		}

	} else {
		err = FUNC40(pdev, FUNC0(32));
		if (err) {
			FUNC15(&pdev->dev, "No usable DMA configuration, "
			       "aborting\n");
			goto err_out_free_res;
		}
		pci_using_dac = 0;
	}

	casreg_len = FUNC37(pdev, 0);

	cp = FUNC21(dev);
	cp->pdev = pdev;
#if 1
	/* A value of 0 indicates we never explicitly set it */
	cp->orig_cacheline_size = cas_cacheline_size ? orig_cacheline_size: 0;
#endif
	cp->dev = dev;
	cp->msg_enable = (cassini_debug < 0) ? CAS_DEF_MSG_ENABLE :
	  cassini_debug;

#if defined(CONFIG_SPARC)
	cp->of_node = pci_device_to_OF_node(pdev);
#endif

	cp->link_transition = LINK_TRANSITION_UNKNOWN;
	cp->link_transition_jiffies_valid = 0;

	FUNC51(&cp->lock);
	FUNC51(&cp->rx_inuse_lock);
	FUNC51(&cp->rx_spare_lock);
	for (i = 0; i < N_TX_RINGS; i++) {
		FUNC51(&cp->stat_lock[i]);
		FUNC51(&cp->tx_lock[i]);
	}
	FUNC51(&cp->stat_lock[N_TX_RINGS]);
	FUNC17(&cp->pm_mutex);

	FUNC52(&cp->link_timer, cas_link_timer, 0);

#if 1
	/* Just in case the implementation of atomic operations
	 * change so that an explicit initialization is necessary.
	 */
	FUNC4(&cp->reset_task_pending, 0);
	FUNC4(&cp->reset_task_pending_all, 0);
	FUNC4(&cp->reset_task_pending_spare, 0);
	FUNC4(&cp->reset_task_pending_mtu, 0);
#endif
	FUNC1(&cp->reset_task, cas_reset_task);

	/* Default link parameters */
	if (link_mode >= 0 && link_mode < 6)
		cp->link_cntl = link_modes[link_mode];
	else
		cp->link_cntl = BMCR_ANENABLE;
	cp->lstate = link_down;
	cp->link_transition = LINK_TRANSITION_LINK_DOWN;
	FUNC22(cp->dev);
	cp->timer_ticks = 0;

	/* give us access to cassini registers */
	cp->regs = FUNC29(pdev, 0, casreg_len);
	if (!cp->regs) {
		FUNC15(&pdev->dev, "Cannot map device registers, aborting\n");
		goto err_out_free_res;
	}
	cp->casreg_len = casreg_len;

	FUNC38(pdev);
	FUNC7(cp);
	FUNC9(cp);
	FUNC12(cp, 0);
	if (FUNC6(cp))
		goto err_out_iounmap;
	if (cp->cas_flags & CAS_FLAG_SATURN)
		FUNC13(cp);

	cp->init_block = (struct cas_init_block *)
		FUNC24(pdev, sizeof(struct cas_init_block),
				     &cp->block_dvma);
	if (!cp->init_block) {
		FUNC15(&pdev->dev, "Cannot allocate init block, aborting\n");
		goto err_out_iounmap;
	}

	for (i = 0; i < N_TX_RINGS; i++)
		cp->init_txds[i] = cp->init_block->txds[i];

	for (i = 0; i < N_RX_DESC_RINGS; i++)
		cp->init_rxds[i] = cp->init_block->rxds[i];

	for (i = 0; i < N_RX_COMP_RINGS; i++)
		cp->init_rxcs[i] = cp->init_block->rxcs[i];

	for (i = 0; i < N_RX_FLOWS; i++)
		FUNC50(&cp->rx_flows[i]);

	dev->netdev_ops = &cas_netdev_ops;
	dev->ethtool_ops = &cas_ethtool_ops;
	dev->watchdog_timeo = CAS_TX_TIMEOUT;

#ifdef USE_NAPI
	netif_napi_add(dev, &cp->napi, cas_poll, 64);
#endif
	dev->irq = pdev->irq;
	dev->dma = 0;

	/* Cassini features. */
	if ((cp->cas_flags & CAS_FLAG_NO_HW_CSUM) == 0)
		dev->features |= NETIF_F_HW_CSUM | NETIF_F_SG;

	if (pci_using_dac)
		dev->features |= NETIF_F_HIGHDMA;

	/* MTU range: 60 - varies or 9000 */
	dev->min_mtu = CAS_MIN_MTU;
	dev->max_mtu = CAS_MAX_MTU;

	if (FUNC49(dev)) {
		FUNC15(&pdev->dev, "Cannot register net device, aborting\n");
		goto err_out_free_consistent;
	}

	i = FUNC48(cp->regs + REG_BIM_CFG);
	FUNC20(dev, "Sun Cassini%s (%sbit/%sMHz PCI/%s) Ethernet[%d] %pM\n",
		    (cp->cas_flags & CAS_FLAG_REG_PLUS) ? "+" : "",
		    (i & BIM_CFG_32BIT) ? "32" : "64",
		    (i & BIM_CFG_66MHZ) ? "66" : "33",
		    (cp->phy_type == CAS_PHY_SERDES) ? "Fi" : "Cu", pdev->irq,
		    dev->dev_addr);

	FUNC41(pdev, dev);
	cp->hw_running = 1;
	FUNC8(cp);
	FUNC10(cp);
	FUNC5(cp, NULL);
	return 0;

err_out_free_consistent:
	FUNC28(pdev, sizeof(struct cas_init_block),
			    cp->init_block, cp->block_dvma);

err_out_iounmap:
	FUNC18(&cp->pm_mutex);
	if (cp->hw_running)
		FUNC14(cp);
	FUNC19(&cp->pm_mutex);

	FUNC30(pdev, cp->regs);


err_out_free_res:
	FUNC34(pdev);

err_write_cacheline:
	/* Try to restore it in case the error occurred after we
	 * set it.
	 */
	FUNC44(pdev, PCI_CACHE_LINE_SIZE, orig_cacheline_size);

err_out_free_netdev:
	FUNC16(dev);

err_out_disable_pdev:
	FUNC26(pdev);
	return -ENODEV;
}