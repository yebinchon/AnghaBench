#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  hb_timer; int /*<<< orphan*/  sem_timer; int /*<<< orphan*/  ioc_timer; int /*<<< orphan*/  iocpf_timer; } ;
struct TYPE_9__ {TYPE_3__ ioc; } ;
struct bna {TYPE_4__ ioceth; int /*<<< orphan*/  enet; int /*<<< orphan*/  stats; } ;
struct TYPE_7__ {int /*<<< orphan*/ * bna_stats; } ;
struct bnad {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  regdata; int /*<<< orphan*/ * res_info; int /*<<< orphan*/  bna_lock; struct bna bna; int /*<<< orphan*/ * mod_res_info; int /*<<< orphan*/  run_flags; int /*<<< orphan*/  perm_addr; TYPE_2__ stats; int /*<<< orphan*/  bar0; TYPE_1__* pcidev; scalar_t__ id; } ;
struct bfa_pcidev {int /*<<< orphan*/  pci_bar_kva; int /*<<< orphan*/  device_id; int /*<<< orphan*/  pci_func; int /*<<< orphan*/  pci_slot; } ;
struct TYPE_10__ {scalar_t__ num_rxp; scalar_t__ num_txq; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 scalar_t__ BNAD_NUM_RXP ; 
 scalar_t__ BNAD_NUM_TXQ ; 
 int /*<<< orphan*/  BNAD_RF_NETDEV_REGISTERED ; 
 int /*<<< orphan*/  BNA_MOD_RES_T_MAX ; 
 int /*<<< orphan*/  BNA_RES_T_MAX ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC4 (struct bna*) ; 
 scalar_t__ bna_debugfs_enable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bna_id ; 
 int /*<<< orphan*/  FUNC6 (struct bna*,struct bnad*,struct bfa_pcidev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bna*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bna*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct bna*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct bna*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct bna*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC14 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC15 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC16 (struct bnad*) ; 
 int /*<<< orphan*/  bnad_fwimg_mutex ; 
 int FUNC17 (struct bnad*,struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  bnad_ioc_hb_check ; 
 int /*<<< orphan*/  bnad_ioc_timeout ; 
 int /*<<< orphan*/  FUNC18 (struct bnad*) ; 
 int FUNC19 (struct bnad*) ; 
 int /*<<< orphan*/  bnad_iocpf_sem_timeout ; 
 int /*<<< orphan*/  bnad_iocpf_timeout ; 
 int /*<<< orphan*/  FUNC20 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC21 (struct bnad*) ; 
 int FUNC22 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC23 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC24 (struct bnad*,int) ; 
 int FUNC25 (struct bnad*,struct pci_dev*,int*) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC27 (struct bnad*,scalar_t__,scalar_t__) ; 
 int FUNC28 (struct bnad*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct bnad*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC31 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC32 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC35 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC39 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC40 (struct net_device*) ; 
 int FUNC41 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC46(struct pci_dev *pdev,
		const struct pci_device_id *pcidev_id)
{
	bool	using_dac;
	int	err;
	struct bnad *bnad;
	struct bna *bna;
	struct net_device *netdev;
	struct bfa_pcidev pcidev_info;
	unsigned long flags;

	FUNC37(&bnad_fwimg_mutex);
	if (!FUNC32(pdev)) {
		FUNC38(&bnad_fwimg_mutex);
		FUNC34(&pdev->dev, "failed to load firmware image!\n");
		return -ENODEV;
	}
	FUNC38(&bnad_fwimg_mutex);

	/*
	 * Allocates sizeof(struct net_device + struct bnad)
	 * bnad = netdev->priv
	 */
	netdev = FUNC2(sizeof(struct bnad));
	if (!netdev) {
		err = -ENOMEM;
		return err;
	}
	bnad = FUNC39(netdev);
	FUNC20(bnad);
	bnad->id = FUNC3(&bna_id) - 1;

	FUNC37(&bnad->conf_mutex);
	/*
	 * PCI initialization
	 *	Output : using_dac = 1 for 64 bit DMA
	 *			   = 0 for 32 bit DMA
	 */
	using_dac = false;
	err = FUNC25(bnad, pdev, &using_dac);
	if (err)
		goto unlock_mutex;

	/*
	 * Initialize bnad structure
	 * Setup relation between pci_dev & netdev
	 */
	err = FUNC17(bnad, pdev, netdev);
	if (err)
		goto pci_uninit;

	/* Initialize netdev structure, set up ethtool ops */
	FUNC24(bnad, using_dac);

	/* Set link to down state */
	FUNC40(netdev);

	/* Setup the debugfs node for this bfad */
	if (bna_debugfs_enable)
		FUNC13(bnad);

	/* Get resource requirement form bna */
	FUNC43(&bnad->bna_lock, flags);
	FUNC11(&bnad->res_info[0]);
	FUNC44(&bnad->bna_lock, flags);

	/* Allocate resources from bna */
	err = FUNC28(bnad, &bnad->res_info[0], BNA_RES_T_MAX);
	if (err)
		goto drv_uninit;

	bna = &bnad->bna;

	/* Setup pcidev_info for bna_init() */
	pcidev_info.pci_slot = FUNC1(bnad->pcidev->devfn);
	pcidev_info.pci_func = FUNC0(bnad->pcidev->devfn);
	pcidev_info.device_id = bnad->pcidev->device;
	pcidev_info.pci_bar_kva = bnad->bar0;

	FUNC43(&bnad->bna_lock, flags);
	FUNC6(bna, bnad, &pcidev_info, &bnad->res_info[0]);
	FUNC44(&bnad->bna_lock, flags);

	bnad->stats.bna_stats = &bna->stats;

	FUNC16(bnad);
	err = FUNC22(bnad);
	if (err)
		goto res_free;

	/* Set up timers */
	FUNC45(&bnad->bna.ioceth.ioc.ioc_timer, bnad_ioc_timeout, 0);
	FUNC45(&bnad->bna.ioceth.ioc.hb_timer, bnad_ioc_hb_check, 0);
	FUNC45(&bnad->bna.ioceth.ioc.iocpf_timer, bnad_iocpf_timeout, 0);
	FUNC45(&bnad->bna.ioceth.ioc.sem_timer, bnad_iocpf_sem_timeout,
		    0);

	/*
	 * Start the chip
	 * If the call back comes with error, we bail out.
	 * This is a catastrophic error.
	 */
	err = FUNC19(bnad);
	if (err) {
		FUNC34(&pdev->dev, "initialization failed err=%d\n", err);
		goto probe_success;
	}

	FUNC43(&bnad->bna_lock, flags);
	if (FUNC10(bna, BNAD_NUM_TXQ + 1) ||
		FUNC9(bna, BNAD_NUM_RXP + 1)) {
		FUNC27(bnad, FUNC4(bna)->num_txq - 1,
			FUNC4(bna)->num_rxp - 1);
		if (FUNC10(bna, BNAD_NUM_TXQ + 1) ||
			FUNC9(bna, BNAD_NUM_RXP + 1))
			err = -EIO;
	}
	FUNC44(&bnad->bna_lock, flags);
	if (err)
		goto disable_ioceth;

	FUNC43(&bnad->bna_lock, flags);
	FUNC8(&bnad->bna, &bnad->mod_res_info[0]);
	FUNC44(&bnad->bna_lock, flags);

	err = FUNC28(bnad, &bnad->mod_res_info[0], BNA_MOD_RES_T_MAX);
	if (err) {
		err = -EIO;
		goto disable_ioceth;
	}

	FUNC43(&bnad->bna_lock, flags);
	FUNC7(&bnad->bna, &bnad->mod_res_info[0]);
	FUNC44(&bnad->bna_lock, flags);

	/* Get the burnt-in mac */
	FUNC43(&bnad->bna_lock, flags);
	FUNC5(&bna->enet, bnad->perm_addr);
	FUNC30(bnad);
	FUNC44(&bnad->bna_lock, flags);

	FUNC38(&bnad->conf_mutex);

	/* Finally, reguister with net_device layer */
	err = FUNC41(netdev);
	if (err) {
		FUNC34(&pdev->dev, "registering net device failed\n");
		goto probe_uninit;
	}
	FUNC42(BNAD_RF_NETDEV_REGISTERED, &bnad->run_flags);

	return 0;

probe_success:
	FUNC38(&bnad->conf_mutex);
	return 0;

probe_uninit:
	FUNC37(&bnad->conf_mutex);
	FUNC29(bnad, &bnad->mod_res_info[0], BNA_MOD_RES_T_MAX);
disable_ioceth:
	FUNC18(bnad);
	FUNC33(&bnad->bna.ioceth.ioc.ioc_timer);
	FUNC33(&bnad->bna.ioceth.ioc.sem_timer);
	FUNC33(&bnad->bna.ioceth.ioc.hb_timer);
	FUNC43(&bnad->bna_lock, flags);
	FUNC12(bna);
	FUNC44(&bnad->bna_lock, flags);
	FUNC23(bnad);
	FUNC15(bnad);
res_free:
	FUNC29(bnad, &bnad->res_info[0], BNA_RES_T_MAX);
drv_uninit:
	/* Remove the debugfs node for this bnad */
	FUNC36(bnad->regdata);
	FUNC14(bnad);
	FUNC31(bnad);
pci_uninit:
	FUNC26(pdev);
unlock_mutex:
	FUNC38(&bnad->conf_mutex);
	FUNC21(bnad);
	FUNC35(netdev);
	return err;
}