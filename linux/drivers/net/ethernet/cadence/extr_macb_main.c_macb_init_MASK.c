#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int hw_features; int features; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  name; } ;
struct macb_queue {int /*<<< orphan*/  tx_error_task; int /*<<< orphan*/  irq; int /*<<< orphan*/  RBQPH; int /*<<< orphan*/  TBQPH; int /*<<< orphan*/  RBQP; int /*<<< orphan*/  TBQP; int /*<<< orphan*/  IMR; int /*<<< orphan*/  IDR; int /*<<< orphan*/  IER; int /*<<< orphan*/  ISR; int /*<<< orphan*/  RBQS; int /*<<< orphan*/  napi; struct macb* bp; } ;
struct TYPE_3__ {scalar_t__ count; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  mog_rx; int /*<<< orphan*/  mog_init_rings; int /*<<< orphan*/  mog_free_rx_buffers; int /*<<< orphan*/  mog_alloc_rx_buffers; } ;
struct macb {int queue_mask; int hw_dma_cap; int caps; scalar_t__ max_tuples; scalar_t__ phy_interface; int /*<<< orphan*/  rx_fs_lock; TYPE_1__ rx_fs_list; TYPE_2__ macbgem_ops; int /*<<< orphan*/  max_tx_length; struct macb_queue* queues; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  tx_ring_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKEN ; 
 int /*<<< orphan*/  DCFG6 ; 
 int /*<<< orphan*/  DCFG8 ; 
 int /*<<< orphan*/  DEFAULT_RX_RING_SIZE ; 
 int /*<<< orphan*/  DEFAULT_TX_RING_SIZE ; 
 int /*<<< orphan*/  ETHT ; 
 int /*<<< orphan*/  ETHTCMP ; 
 scalar_t__ ETH_P_IP ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  GEM_MAX_TX_LEN ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int HW_DMA_CAP_64B ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int MACB_CAPS_FIFO_MODE ; 
 int MACB_CAPS_SG_DISABLED ; 
 int MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII ; 
 int MACB_CAPS_USRIO_DISABLED ; 
 int MACB_CAPS_USRIO_HAS_CLKEN ; 
 int /*<<< orphan*/  MACB_IDR ; 
 int /*<<< orphan*/  MACB_IER ; 
 int /*<<< orphan*/  MACB_IMR ; 
 int /*<<< orphan*/  MACB_ISR ; 
 unsigned int MACB_MAX_QUEUES ; 
 int /*<<< orphan*/  MACB_MAX_TX_LEN ; 
 int MACB_NETIF_LSO ; 
 int /*<<< orphan*/  MACB_RBQP ; 
 int /*<<< orphan*/  MACB_RBQPH ; 
 int /*<<< orphan*/  MACB_TBQP ; 
 int /*<<< orphan*/  MACB_TBQPH ; 
 int /*<<< orphan*/  MII ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  NCFGR ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_NTUPLE ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  PBUF_LSO ; 
 int /*<<< orphan*/  PCSSEL ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII ; 
 scalar_t__ PHY_INTERFACE_MODE_RMII ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  RGMII ; 
 int /*<<< orphan*/  RMII ; 
 int /*<<< orphan*/  SCR2CMP ; 
 int /*<<< orphan*/  SCR2ETH ; 
 int /*<<< orphan*/  SCRT2_ETHT ; 
 int /*<<< orphan*/  SGMIIEN ; 
 int /*<<< orphan*/  T2SCR ; 
 int /*<<< orphan*/  USRIO ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct macb_queue*) ; 
 int /*<<< orphan*/  gem_alloc_rx_buffers ; 
 int /*<<< orphan*/  gem_ethtool_ops ; 
 int /*<<< orphan*/  gem_free_rx_buffers ; 
 int /*<<< orphan*/  gem_init_rings ; 
 int FUNC17 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gem_rx ; 
 int /*<<< orphan*/  FUNC18 (struct macb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  macb_alloc_rx_buffers ; 
 int FUNC19 (struct macb*) ; 
 int /*<<< orphan*/  macb_ethtool_ops ; 
 int /*<<< orphan*/  macb_free_rx_buffers ; 
 int /*<<< orphan*/  macb_init_rings ; 
 int /*<<< orphan*/  macb_interrupt ; 
 scalar_t__ FUNC20 (struct macb*) ; 
 int FUNC21 (struct macb*) ; 
 int /*<<< orphan*/  macb_netdev_ops ; 
 int /*<<< orphan*/  FUNC22 (struct macb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  macb_poll ; 
 int /*<<< orphan*/  macb_rx ; 
 int /*<<< orphan*/  macb_tx_error_task ; 
 int /*<<< orphan*/  FUNC23 (struct macb*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC24 (int,int) ; 
 struct macb* FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC27 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct platform_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	struct net_device *dev = FUNC27(pdev);
	unsigned int hw_q, q;
	struct macb *bp = FUNC25(dev);
	struct macb_queue *queue;
	int err;
	u32 val, reg;

	bp->tx_ring_size = DEFAULT_TX_RING_SIZE;
	bp->rx_ring_size = DEFAULT_RX_RING_SIZE;

	/* set the queue register mapping once for all: queue0 has a special
	 * register mapping but we don't want to test the queue index then
	 * compute the corresponding register offset at run time.
	 */
	for (hw_q = 0, q = 0; hw_q < MACB_MAX_QUEUES; ++hw_q) {
		if (!(bp->queue_mask & (1 << hw_q)))
			continue;

		queue = &bp->queues[q];
		queue->bp = bp;
		FUNC26(dev, &queue->napi, macb_poll, NAPI_POLL_WEIGHT);
		if (hw_q) {
			queue->ISR  = FUNC6(hw_q - 1);
			queue->IER  = FUNC4(hw_q - 1);
			queue->IDR  = FUNC3(hw_q - 1);
			queue->IMR  = FUNC5(hw_q - 1);
			queue->TBQP = FUNC10(hw_q - 1);
			queue->RBQP = FUNC7(hw_q - 1);
			queue->RBQS = FUNC9(hw_q - 1);
#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
			if (bp->hw_dma_cap & HW_DMA_CAP_64B) {
				queue->TBQPH = GEM_TBQPH(hw_q - 1);
				queue->RBQPH = GEM_RBQPH(hw_q - 1);
			}
#endif
		} else {
			/* queue0 uses legacy registers */
			queue->ISR  = MACB_ISR;
			queue->IER  = MACB_IER;
			queue->IDR  = MACB_IDR;
			queue->IMR  = MACB_IMR;
			queue->TBQP = MACB_TBQP;
			queue->RBQP = MACB_RBQP;
#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
			if (bp->hw_dma_cap & HW_DMA_CAP_64B) {
				queue->TBQPH = MACB_TBQPH;
				queue->RBQPH = MACB_RBQPH;
			}
#endif
		}

		/* get irq: here we use the linux queue index, not the hardware
		 * queue index. the queue irq definitions in the device tree
		 * must remove the optional gaps that could exist in the
		 * hardware queue mask.
		 */
		queue->irq = FUNC28(pdev, q);
		err = FUNC16(&pdev->dev, queue->irq, macb_interrupt,
				       IRQF_SHARED, dev->name, queue);
		if (err) {
			FUNC15(&pdev->dev,
				"Unable to request IRQ %d (error %d)\n",
				queue->irq, err);
			return err;
		}

		FUNC13(&queue->tx_error_task, macb_tx_error_task);
		q++;
	}

	dev->netdev_ops = &macb_netdev_ops;

	/* setup appropriated routines according to adapter type */
	if (FUNC20(bp)) {
		bp->max_tx_length = GEM_MAX_TX_LEN;
		bp->macbgem_ops.mog_alloc_rx_buffers = gem_alloc_rx_buffers;
		bp->macbgem_ops.mog_free_rx_buffers = gem_free_rx_buffers;
		bp->macbgem_ops.mog_init_rings = gem_init_rings;
		bp->macbgem_ops.mog_rx = gem_rx;
		dev->ethtool_ops = &gem_ethtool_ops;
	} else {
		bp->max_tx_length = MACB_MAX_TX_LEN;
		bp->macbgem_ops.mog_alloc_rx_buffers = macb_alloc_rx_buffers;
		bp->macbgem_ops.mog_free_rx_buffers = macb_free_rx_buffers;
		bp->macbgem_ops.mog_init_rings = macb_init_rings;
		bp->macbgem_ops.mog_rx = macb_rx;
		dev->ethtool_ops = &macb_ethtool_ops;
	}

	/* Set features */
	dev->hw_features = NETIF_F_SG;

	/* Check LSO capability */
	if (FUNC0(PBUF_LSO, FUNC17(bp, DCFG6)))
		dev->hw_features |= MACB_NETIF_LSO;

	/* Checksum offload is only available on gem with packet buffer */
	if (FUNC20(bp) && !(bp->caps & MACB_CAPS_FIFO_MODE))
		dev->hw_features |= NETIF_F_HW_CSUM | NETIF_F_RXCSUM;
	if (bp->caps & MACB_CAPS_SG_DISABLED)
		dev->hw_features &= ~NETIF_F_SG;
	dev->features = dev->hw_features;

	/* Check RX Flow Filters support.
	 * Max Rx flows set by availability of screeners & compare regs:
	 * each 4-tuple define requires 1 T2 screener reg + 3 compare regs
	 */
	reg = FUNC17(bp, DCFG8);
	bp->max_tuples = FUNC24((FUNC0(SCR2CMP, reg) / 3),
			FUNC0(T2SCR, reg));
	if (bp->max_tuples > 0) {
		/* also needs one ethtype match to check IPv4 */
		if (FUNC0(SCR2ETH, reg) > 0) {
			/* program this reg now */
			reg = 0;
			reg = FUNC1(ETHTCMP, (uint16_t)ETH_P_IP, reg);
			FUNC18(bp, ETHT, SCRT2_ETHT, reg);
			/* Filtering is supported in hw but don't enable it in kernel now */
			dev->hw_features |= NETIF_F_NTUPLE;
			/* init Rx flow definitions */
			FUNC12(&bp->rx_fs_list.list);
			bp->rx_fs_list.count = 0;
			FUNC29(&bp->rx_fs_lock);
		} else
			bp->max_tuples = 0;
	}

	if (!(bp->caps & MACB_CAPS_USRIO_DISABLED)) {
		val = 0;
		if (bp->phy_interface == PHY_INTERFACE_MODE_RGMII)
			val = FUNC2(RGMII);
		else if (bp->phy_interface == PHY_INTERFACE_MODE_RMII &&
			 (bp->caps & MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII))
			val = FUNC14(RMII);
		else if (!(bp->caps & MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII))
			val = FUNC14(MII);

		if (bp->caps & MACB_CAPS_USRIO_HAS_CLKEN)
			val |= FUNC14(CLKEN);

		FUNC22(bp, USRIO, val);
	}

	/* Set MII management clock divider */
	val = FUNC21(bp);
	val |= FUNC19(bp);
	if (bp->phy_interface == PHY_INTERFACE_MODE_SGMII)
		val |= FUNC2(SGMIIEN) | FUNC2(PCSSEL);
	FUNC23(bp, NCFGR, val);

	return 0;
}