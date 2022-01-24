#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_4__ {int /*<<< orphan*/  mem; } ;
struct TYPE_5__ {int rcv_bufs_to_post; TYPE_1__ base; int /*<<< orphan*/  kmalloced_dma; scalar_t__ kmalloced; } ;
typedef  int /*<<< orphan*/  PI_DESCR_BLOCK ;
typedef  int /*<<< orphan*/  PI_CONSUMER_BLOCK ;
typedef  TYPE_2__ DFX_board_t ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 scalar_t__ DFX_MMIO ; 
 int PI_ALIGN_K_DESC_BLK ; 
 int PI_CMD_REQ_K_SIZE_MAX ; 
 int PI_CMD_RSP_K_SIZE_MAX ; 
 int PI_RCV_DATA_K_SIZE_MAX ; 
 struct net_device* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

__attribute__((used)) static void FUNC14(struct device *bdev)
{
	struct net_device *dev = FUNC1(bdev);
	DFX_board_t *bp = FUNC8(dev);
	int dfx_bus_pci = FUNC2(bdev);
	int dfx_bus_tc = FUNC0(bdev);
	int dfx_use_mmio = DFX_MMIO || dfx_bus_tc;
	resource_size_t bar_start[3] = {0};	/* pointers to ports */
	resource_size_t bar_len[3] = {0};	/* resource lengths */
	int		alloc_size;		/* total buffer size used */

	FUNC13(dev);

	alloc_size = sizeof(PI_DESCR_BLOCK) +
		     PI_CMD_REQ_K_SIZE_MAX + PI_CMD_RSP_K_SIZE_MAX +
#ifndef DYNAMIC_BUFFERS
		     (bp->rcv_bufs_to_post * PI_RCV_DATA_K_SIZE_MAX) +
#endif
		     sizeof(PI_CONSUMER_BLOCK) +
		     (PI_ALIGN_K_DESC_BLK - 1);
	if (bp->kmalloced)
		FUNC5(bdev, alloc_size,
				  bp->kmalloced, bp->kmalloced_dma);

	FUNC3(dev);

	FUNC4(bdev, bar_start, bar_len);
	if (bar_start[2] != 0)
		FUNC11(bar_start[2], bar_len[2]);
	if (bar_start[1] != 0)
		FUNC11(bar_start[1], bar_len[1]);
	if (dfx_use_mmio) {
		FUNC7(bp->base.mem);
		FUNC10(bar_start[0], bar_len[0]);
	} else
		FUNC11(bar_start[0], bar_len[0]);

	if (dfx_bus_pci)
		FUNC9(FUNC12(bdev));

	FUNC6(dev);
}