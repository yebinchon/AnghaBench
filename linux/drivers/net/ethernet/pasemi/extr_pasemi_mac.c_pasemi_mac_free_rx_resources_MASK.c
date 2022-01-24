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
typedef  int /*<<< orphan*/  u64 ;
struct pasemi_mac {int /*<<< orphan*/ * rx; TYPE_1__* dma_pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  chan; int /*<<< orphan*/  ring_info; int /*<<< orphan*/  buf_dma; int /*<<< orphan*/  buffers; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pasemi_mac*) ; 
 TYPE_2__* FUNC4 (struct pasemi_mac*) ; 

__attribute__((used)) static void FUNC5(struct pasemi_mac *mac)
{
	FUNC3(mac);

	FUNC0(&mac->dma_pdev->dev, RX_RING_SIZE * sizeof(u64),
			  FUNC4(mac)->buffers, FUNC4(mac)->buf_dma);

	FUNC1(FUNC4(mac)->ring_info);
	FUNC2(&FUNC4(mac)->chan);
	mac->rx = NULL;
}