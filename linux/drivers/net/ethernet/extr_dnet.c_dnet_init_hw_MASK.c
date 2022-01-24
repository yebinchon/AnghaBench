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
typedef  int u32 ;
struct dnet {TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int DNET_INTERNAL_RXTX_CONTROL_DISCFXFCS ; 
 int DNET_INTERNAL_RXTX_CONTROL_DROPCONTROL ; 
 int DNET_INTERNAL_RXTX_CONTROL_ENPROMISC ; 
 int /*<<< orphan*/  DNET_INTERNAL_RXTX_CONTROL_REG ; 
 int DNET_INTERNAL_RXTX_CONTROL_RXBROADCAST ; 
 int DNET_INTERNAL_RXTX_CONTROL_RXMULTICAST ; 
 int DNET_INTERNAL_RXTX_CONTROL_RXPAUSE ; 
 int DNET_INTR_ENB_GLOBAL_ENABLE ; 
 int DNET_INTR_ENB_RX_ERROR ; 
 int DNET_INTR_ENB_RX_FIFOERR ; 
 int DNET_INTR_ENB_RX_FIFOFULL ; 
 int DNET_INTR_ENB_RX_PKTRDY ; 
 int DNET_INTR_ENB_RX_SUMMARY ; 
 int DNET_INTR_ENB_TX_DISCFRM ; 
 int DNET_INTR_ENB_TX_FIFOFULL ; 
 int DNET_INTR_ENB_TX_SUMMARY ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  INTR_ENB ; 
 int /*<<< orphan*/  INTR_SRC ; 
 int /*<<< orphan*/  FUNC0 (struct dnet*) ; 
 int FUNC1 (struct dnet*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct dnet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct dnet *bp)
{
	u32 config;

	FUNC3(bp);
	FUNC0(bp);

	config = FUNC2(bp, DNET_INTERNAL_RXTX_CONTROL_REG);

	if (bp->dev->flags & IFF_PROMISC)
		/* Copy All Frames */
		config |= DNET_INTERNAL_RXTX_CONTROL_ENPROMISC;
	if (!(bp->dev->flags & IFF_BROADCAST))
		/* No BroadCast */
		config |= DNET_INTERNAL_RXTX_CONTROL_RXMULTICAST;

	config |= DNET_INTERNAL_RXTX_CONTROL_RXPAUSE |
	    DNET_INTERNAL_RXTX_CONTROL_RXBROADCAST |
	    DNET_INTERNAL_RXTX_CONTROL_DROPCONTROL |
	    DNET_INTERNAL_RXTX_CONTROL_DISCFXFCS;

	FUNC5(bp, DNET_INTERNAL_RXTX_CONTROL_REG, config);

	/* clear irq before enabling them */
	config = FUNC1(bp, INTR_SRC);

	/* enable RX/TX interrupt, recv packet ready interrupt */
	FUNC4(bp, DNET_INTR_ENB_GLOBAL_ENABLE | DNET_INTR_ENB_RX_SUMMARY |
			DNET_INTR_ENB_TX_SUMMARY | DNET_INTR_ENB_RX_FIFOERR |
			DNET_INTR_ENB_RX_ERROR | DNET_INTR_ENB_RX_FIFOFULL |
			DNET_INTR_ENB_TX_FIFOFULL | DNET_INTR_ENB_TX_DISCFRM |
			DNET_INTR_ENB_RX_PKTRDY, INTR_ENB);
}