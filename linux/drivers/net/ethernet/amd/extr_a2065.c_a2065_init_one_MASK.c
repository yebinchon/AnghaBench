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
typedef  int u32 ;
struct zorro_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  er_SerialNumber; } ;
struct TYPE_3__ {unsigned long start; } ;
struct zorro_dev {scalar_t__ id; TYPE_2__ rom; TYPE_1__ resource; } ;
struct resource {int /*<<< orphan*/  name; } ;
struct net_device {int* dev_addr; unsigned long base_addr; unsigned long mem_start; int mem_end; int watchdog_timeo; scalar_t__ dma; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  name; } ;
struct lance_regs {int dummy; } ;
struct lance_private {int /*<<< orphan*/  multicast_timer; struct net_device* dev; int /*<<< orphan*/  tx_ring_mod_mask; int /*<<< orphan*/  rx_ring_mod_mask; int /*<<< orphan*/  lance_log_tx_bufs; int /*<<< orphan*/  lance_log_rx_bufs; int /*<<< orphan*/  busmaster_regval; scalar_t__ auto_select; struct lance_init_block* lance_init_block; struct lance_init_block* init_block; struct lance_regs volatile* ll; } ;
struct lance_init_block {int dummy; } ;

/* Variables and functions */
 unsigned long A2065_LANCE ; 
 unsigned long A2065_RAM ; 
 int A2065_RAM_SIZE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  LANCE_LOG_RX_BUFFERS ; 
 int /*<<< orphan*/  LANCE_LOG_TX_BUFFERS ; 
 int /*<<< orphan*/  LE_C3_BSWP ; 
 int /*<<< orphan*/  RX_RING_MOD_MASK ; 
 int /*<<< orphan*/  TX_RING_MOD_MASK ; 
 scalar_t__ ZORRO_PROD_AMERISTAR_A2065 ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 struct net_device* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  lance_netdev_ops ; 
 int /*<<< orphan*/  lance_set_multicast_retry ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,unsigned long,int*) ; 
 struct lance_private* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int) ; 
 struct resource* FUNC8 (unsigned long,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct zorro_dev*,struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct zorro_dev *z,
			  const struct zorro_device_id *ent)
{
	struct net_device *dev;
	struct lance_private *priv;
	unsigned long board = z->resource.start;
	unsigned long base_addr = board + A2065_LANCE;
	unsigned long mem_start = board + A2065_RAM;
	struct resource *r1, *r2;
	u32 serial;
	int err;

	r1 = FUNC8(base_addr, sizeof(struct lance_regs),
				"Am7990");
	if (!r1)
		return -EBUSY;
	r2 = FUNC8(mem_start, A2065_RAM_SIZE, "RAM");
	if (!r2) {
		FUNC7(base_addr, sizeof(struct lance_regs));
		return -EBUSY;
	}

	dev = FUNC1(sizeof(struct lance_private));
	if (dev == NULL) {
		FUNC7(base_addr, sizeof(struct lance_regs));
		FUNC7(mem_start, A2065_RAM_SIZE);
		return -ENOMEM;
	}

	priv = FUNC5(dev);

	r1->name = dev->name;
	r2->name = dev->name;

	serial = FUNC2(z->rom.er_SerialNumber);
	dev->dev_addr[0] = 0x00;
	if (z->id != ZORRO_PROD_AMERISTAR_A2065) {	/* Commodore */
		dev->dev_addr[1] = 0x80;
		dev->dev_addr[2] = 0x10;
	} else {					/* Ameristar */
		dev->dev_addr[1] = 0x00;
		dev->dev_addr[2] = 0x9f;
	}
	dev->dev_addr[3] = (serial >> 16) & 0xff;
	dev->dev_addr[4] = (serial >> 8) & 0xff;
	dev->dev_addr[5] = serial & 0xff;
	dev->base_addr = (unsigned long)FUNC0(base_addr);
	dev->mem_start = (unsigned long)FUNC0(mem_start);
	dev->mem_end = dev->mem_start + A2065_RAM_SIZE;

	priv->ll = (volatile struct lance_regs *)dev->base_addr;
	priv->init_block = (struct lance_init_block *)dev->mem_start;
	priv->lance_init_block = (struct lance_init_block *)A2065_RAM;
	priv->auto_select = 0;
	priv->busmaster_regval = LE_C3_BSWP;

	priv->lance_log_rx_bufs = LANCE_LOG_RX_BUFFERS;
	priv->lance_log_tx_bufs = LANCE_LOG_TX_BUFFERS;
	priv->rx_ring_mod_mask = RX_RING_MOD_MASK;
	priv->tx_ring_mod_mask = TX_RING_MOD_MASK;
	priv->dev = dev;

	dev->netdev_ops = &lance_netdev_ops;
	dev->watchdog_timeo = 5*HZ;
	dev->dma = 0;

	FUNC9(&priv->multicast_timer, lance_set_multicast_retry, 0);

	err = FUNC6(dev);
	if (err) {
		FUNC7(base_addr, sizeof(struct lance_regs));
		FUNC7(mem_start, A2065_RAM_SIZE);
		FUNC3(dev);
		return err;
	}
	FUNC10(z, dev);

	FUNC4(dev, "A2065 at 0x%08lx, Ethernet Address %pM\n",
		    board, dev->dev_addr);

	return 0;
}