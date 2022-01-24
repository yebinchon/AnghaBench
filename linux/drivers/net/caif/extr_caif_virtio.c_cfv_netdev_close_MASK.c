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
struct net_device {int dummy; } ;
struct cfv_info {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  vq_tx; int /*<<< orphan*/  napi; int /*<<< orphan*/  vr_rx; } ;
struct buf_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfv_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cfv_info*,struct buf_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cfv_info* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct buf_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct cfv_info *cfv = FUNC4(netdev);
	unsigned long flags;
	struct buf_info *buf_info;

	/* Disable interrupts, queues and NAPI polling */
	FUNC5(netdev);
	FUNC9(cfv->vq_tx);
	FUNC10(cfv->vr_rx);
	FUNC3(&cfv->napi);

	/* Release any TX buffers on both used and avilable rings */
	FUNC1(cfv->vq_tx);
	FUNC6(&cfv->tx_lock, flags);
	while ((buf_info = FUNC8(cfv->vq_tx)))
		FUNC2(cfv, buf_info);
	FUNC7(&cfv->tx_lock, flags);

	/* Release all dma allocated memory and destroy the pool */
	FUNC0(cfv);
	return 0;
}