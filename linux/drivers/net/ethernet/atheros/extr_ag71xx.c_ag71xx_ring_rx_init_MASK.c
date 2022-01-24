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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ag71xx_ring {scalar_t__ dirty; scalar_t__ curr; int /*<<< orphan*/ * buf; scalar_t__ descs_dma; int /*<<< orphan*/  order; } ;
struct ag71xx_desc {int /*<<< orphan*/  ctrl; scalar_t__ next; } ;
struct ag71xx {int /*<<< orphan*/  rx_buf_offset; struct net_device* ndev; struct ag71xx_ring rx_ring; } ;

/* Variables and functions */
 unsigned int AG71XX_DESC_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DESC_EMPTY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ag71xx_desc* FUNC2 (struct ag71xx_ring*,unsigned int) ; 
 int /*<<< orphan*/  netdev_alloc_frag ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*,int /*<<< orphan*/ ,struct net_device*,char*,struct ag71xx_desc*,scalar_t__) ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct ag71xx *ag)
{
	struct ag71xx_ring *ring = &ag->rx_ring;
	struct net_device *ndev = ag->ndev;
	int ring_mask = FUNC0(ring->order) - 1;
	int ring_size = FUNC0(ring->order);
	unsigned int i;
	int ret;

	ret = 0;
	for (i = 0; i < ring_size; i++) {
		struct ag71xx_desc *desc = FUNC2(ring, i);

		desc->next = (u32)(ring->descs_dma +
			AG71XX_DESC_SIZE * ((i + 1) & ring_mask));

		FUNC3(ag, rx_status, ndev, "RX desc at %p, next is %08x\n",
			  desc, desc->next);
	}

	for (i = 0; i < ring_size; i++) {
		struct ag71xx_desc *desc = FUNC2(ring, i);

		if (!FUNC1(ag, &ring->buf[i], ag->rx_buf_offset,
					netdev_alloc_frag)) {
			ret = -ENOMEM;
			break;
		}

		desc->ctrl = DESC_EMPTY;
	}

	/* flush descriptors */
	FUNC4();

	ring->curr = 0;
	ring->dirty = 0;

	return ret;
}