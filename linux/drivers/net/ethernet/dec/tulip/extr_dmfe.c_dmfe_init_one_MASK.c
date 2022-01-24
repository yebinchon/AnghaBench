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
typedef  int u32 ;
struct tx_desc {int dummy; } ;
struct pci_device_id {int driver_data; } ;
struct pci_dev {int revision; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct dmfe_board_info {int chip_id; int chip_revision; int chip_type; int /*<<< orphan*/  desc_pool_dma_ptr; void* desc_pool_ptr; int /*<<< orphan*/  buf_pool_dma_ptr; void* buf_pool_ptr; int /*<<< orphan*/  ioaddr; int /*<<< orphan*/ * srom; int /*<<< orphan*/  lock; struct pci_dev* pdev; scalar_t__ wol_mode; int /*<<< orphan*/  buf_pool_dma_start; void* buf_pool_start; int /*<<< orphan*/  first_tx_desc_dma; struct tx_desc* first_tx_desc; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int DESC_ALL_CNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int PCI_DM9100_ID ; 
 int PCI_DM9102_ID ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int TX_BUF_ALLOC ; 
 int TX_DESC_CNT ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  netdev_ethtool_ops ; 
 int /*<<< orphan*/  netdev_ops ; 
 struct dmfe_board_info* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC11 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 scalar_t__ FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  printed_version ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int) ; 
 int FUNC32 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static int FUNC34(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct dmfe_board_info *db;	/* board information structure */
	struct net_device *dev;
	u32 pci_pmr;
	int i, err;

	FUNC2(0, "dmfe_init_one()", 0);

	if (!printed_version++)
		FUNC29("%s\n", version);

	/*
	 *	SPARC on-board DM910x chips should be handled by the main
	 *	tulip driver, except for early DM9100s.
	 */
#ifdef CONFIG_TULIP_DM910X
	if ((ent->driver_data == PCI_DM9100_ID && pdev->revision >= 0x30) ||
	    ent->driver_data == PCI_DM9102_ID) {
		struct device_node *dp = pci_device_to_OF_node(pdev);

		if (dp && of_get_property(dp, "local-mac-address", NULL)) {
			pr_info("skipping on-board DM910x (use tulip)\n");
			return -ENODEV;
		}
	}
#endif

	/* Init network device */
	dev = FUNC4(sizeof(*db));
	if (dev == NULL)
		return -ENOMEM;
	FUNC3(dev, &pdev->dev);

	if (FUNC24(pdev, FUNC1(32))) {
		FUNC30("32-bit PCI DMA not available\n");
		err = -ENODEV;
		goto err_out_free;
	}

	/* Enable Master/IO access, Disable memory access */
	err = FUNC14(pdev);
	if (err)
		goto err_out_free;

	if (!FUNC23(pdev, 0)) {
		FUNC28("I/O base is zero\n");
		err = -ENODEV;
		goto err_out_disable;
	}

	if (FUNC22(pdev, 0) < (FUNC0(pdev)) ) {
		FUNC28("Allocated I/O size too small\n");
		err = -ENODEV;
		goto err_out_disable;
	}

#if 0	/* pci_{enable_device,set_master} sets minimum latency for us now */

	/* Set Latency Timer 80h */
	/* FIXME: setting values > 32 breaks some SiS 559x stuff.
	   Need a PCI quirk.. */

	pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0x80);
#endif

	if (FUNC21(pdev, DRV_NAME)) {
		FUNC28("Failed to request PCI regions\n");
		err = -ENODEV;
		goto err_out_disable;
	}

	/* Init system & device */
	db = FUNC8(dev);

	/* Allocate Tx/Rx descriptor memory */
	db->desc_pool_ptr = FUNC11(pdev, sizeof(struct tx_desc) *
			DESC_ALL_CNT + 0x20, &db->desc_pool_dma_ptr);
	if (!db->desc_pool_ptr) {
		err = -ENOMEM;
		goto err_out_res;
	}

	db->buf_pool_ptr = FUNC11(pdev, TX_BUF_ALLOC *
			TX_DESC_CNT + 4, &db->buf_pool_dma_ptr);
	if (!db->buf_pool_ptr) {
		err = -ENOMEM;
		goto err_out_free_desc;
	}

	db->first_tx_desc = (struct tx_desc *) db->desc_pool_ptr;
	db->first_tx_desc_dma = db->desc_pool_dma_ptr;
	db->buf_pool_start = db->buf_pool_ptr;
	db->buf_pool_dma_start = db->buf_pool_dma_ptr;

	db->chip_id = ent->driver_data;
	/* IO type range. */
	db->ioaddr = FUNC16(pdev, 0, 0);
	if (!db->ioaddr) {
		err = -ENOMEM;
		goto err_out_free_buf;
	}

	db->chip_revision = pdev->revision;
	db->wol_mode = 0;

	db->pdev = pdev;

	FUNC25(pdev, dev);
	dev->netdev_ops = &netdev_ops;
	dev->ethtool_ops = &netdev_ethtool_ops;
	FUNC9(dev);
	FUNC33(&db->lock);

	FUNC19(pdev, 0x50, &pci_pmr);
	pci_pmr &= 0x70000;
	if ( (pci_pmr == 0x10000) && (db->chip_revision == 0x31) )
		db->chip_type = 1;	/* DM9102A E3 */
	else
		db->chip_type = 0;

	/* read 64 word srom data */
	for (i = 0; i < 64; i++) {
		((__le16 *) db->srom)[i] =
			FUNC5(FUNC31(db->ioaddr, i));
	}

	/* Set Node address */
	for (i = 0; i < 6; i++)
		dev->dev_addr[i] = db->srom[20 + i];

	err = FUNC32 (dev);
	if (err)
		goto err_out_unmap;

	FUNC6(&dev->dev, "Davicom DM%04lx at pci%s, %pM, irq %d\n",
		 ent->driver_data >> 16,
		 FUNC18(pdev), dev->dev_addr, pdev->irq);

	FUNC26(pdev);

	return 0;

err_out_unmap:
	FUNC17(pdev, db->ioaddr);
err_out_free_buf:
	FUNC15(pdev, TX_BUF_ALLOC * TX_DESC_CNT + 4,
			    db->buf_pool_ptr, db->buf_pool_dma_ptr);
err_out_free_desc:
	FUNC15(pdev, sizeof(struct tx_desc) * DESC_ALL_CNT + 0x20,
			    db->desc_pool_ptr, db->desc_pool_dma_ptr);
err_out_res:
	FUNC20(pdev);
err_out_disable:
	FUNC13(pdev);
err_out_free:
	FUNC7(dev);

	return err;
}