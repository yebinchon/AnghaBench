#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {struct tb_ring* ring; } ;
struct TYPE_5__ {struct tb_ring* ring; } ;
struct tbnet {int /*<<< orphan*/  napi; TYPE_3__ rx_ring; TYPE_2__ tx_ring; struct tb_xdomain* xd; } ;
struct tb_xdomain {TYPE_1__* tb; } ;
struct tb_ring {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nhi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int RING_FLAG_E2E ; 
 int RING_FLAG_FRAME ; 
 int /*<<< orphan*/  TBIP_PDF_FRAME_END ; 
 int /*<<< orphan*/  TBIP_PDF_FRAME_START ; 
 int /*<<< orphan*/  TBNET_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct tbnet* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct tbnet*) ; 
 struct tb_ring* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tbnet*) ; 
 struct tb_ring* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tb_ring*) ; 
 int /*<<< orphan*/  tbnet_start_poll ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct tbnet *net = FUNC3(dev);
	struct tb_xdomain *xd = net->xd;
	u16 sof_mask, eof_mask;
	struct tb_ring *ring;

	FUNC4(dev);

	ring = FUNC7(xd->tb->nhi, -1, TBNET_RING_SIZE,
				RING_FLAG_FRAME);
	if (!ring) {
		FUNC2(dev, "failed to allocate Tx ring\n");
		return -ENOMEM;
	}
	net->tx_ring.ring = ring;

	sof_mask = FUNC0(TBIP_PDF_FRAME_START);
	eof_mask = FUNC0(TBIP_PDF_FRAME_END);

	ring = FUNC6(xd->tb->nhi, -1, TBNET_RING_SIZE,
				RING_FLAG_FRAME | RING_FLAG_E2E, sof_mask,
				eof_mask, tbnet_start_poll, net);
	if (!ring) {
		FUNC2(dev, "failed to allocate Rx ring\n");
		FUNC8(net->tx_ring.ring);
		net->tx_ring.ring = NULL;
		return -ENOMEM;
	}
	net->rx_ring.ring = ring;

	FUNC1(&net->napi);
	FUNC5(net);

	return 0;
}