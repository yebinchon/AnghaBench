#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct de4x5_private {int /*<<< orphan*/ ** tx_skb; TYPE_1__* tx_ring; int /*<<< orphan*/  gendev; } ;
struct TYPE_2__ {int /*<<< orphan*/  des1; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int TD_TBS1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct de4x5_private *lp, int entry)
{
    FUNC1(lp->gendev, FUNC2(lp->tx_ring[entry].buf),
		     FUNC2(lp->tx_ring[entry].des1) & TD_TBS1,
		     DMA_TO_DEVICE);
    if ((u_long) lp->tx_skb[entry] > 1)
	FUNC0(lp->tx_skb[entry]);
    lp->tx_skb[entry] = NULL;
}