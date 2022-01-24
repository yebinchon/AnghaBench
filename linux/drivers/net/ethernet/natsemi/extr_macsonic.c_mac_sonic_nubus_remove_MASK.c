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
struct sonic_local {int /*<<< orphan*/  descriptors_laddr; int /*<<< orphan*/  descriptors; int /*<<< orphan*/  dma_bitmode; int /*<<< orphan*/  device; } ;
struct nubus_board {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int SIZEOF_SONIC_DESC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct sonic_local* FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct nubus_board*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct nubus_board *board)
{
	struct net_device *ndev = FUNC4(board);
	struct sonic_local *lp = FUNC3(ndev);

	FUNC5(ndev);
	FUNC1(lp->device,
			  SIZEOF_SONIC_DESC * FUNC0(lp->dma_bitmode),
			  lp->descriptors, lp->descriptors_laddr);
	FUNC2(ndev);

	return 0;
}