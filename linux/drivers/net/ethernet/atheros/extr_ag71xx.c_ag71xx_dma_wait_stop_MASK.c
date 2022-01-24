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
struct net_device {int dummy; } ;
struct ag71xx {struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_DMA_DELAY ; 
 int AG71XX_DMA_RETRY ; 
 int /*<<< orphan*/  AG71XX_REG_RX_CTRL ; 
 int /*<<< orphan*/  AG71XX_REG_TX_CTRL ; 
 int RX_CTRL_RXE ; 
 int TX_CTRL_TXE ; 
 int FUNC0 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static void FUNC3(struct ag71xx *ag)
{
	struct net_device *ndev = ag->ndev;
	int i;

	for (i = 0; i < AG71XX_DMA_RETRY; i++) {
		u32 rx, tx;

		FUNC1(AG71XX_DMA_DELAY);

		rx = FUNC0(ag, AG71XX_REG_RX_CTRL) & RX_CTRL_RXE;
		tx = FUNC0(ag, AG71XX_REG_TX_CTRL) & TX_CTRL_TXE;
		if (!rx && !tx)
			return;
	}

	FUNC2(ag, hw, ndev, "DMA stop operation timed out\n");
}