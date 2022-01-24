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
typedef  int /*<<< orphan*/  u8 ;
struct z8530_channel {int* regs; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** tx_dma_buf; int /*<<< orphan*/ ** rx_buf; scalar_t__ tx_dma_used; scalar_t__ txdma_on; int /*<<< orphan*/  txdma; scalar_t__ rxdma_on; int /*<<< orphan*/  rxdma; scalar_t__ sync; scalar_t__ max; int /*<<< orphan*/ * irqs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int DTRREQ ; 
 int INT_ALL_Rx ; 
 int INT_ERR_Rx ; 
 int /*<<< orphan*/  R0 ; 
 size_t R1 ; 
 size_t R14 ; 
 size_t R3 ; 
 int WT_FN_RDYFN ; 
 int WT_RDY_ENAB ; 
 int WT_RDY_RT ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct z8530_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct z8530_channel*,size_t,int) ; 
 int /*<<< orphan*/  z8530_nop ; 
 int /*<<< orphan*/  FUNC9 (struct z8530_channel*,int /*<<< orphan*/ ) ; 

int FUNC10(struct net_device *dev, struct z8530_channel *c)
{
	u8 chk;
	unsigned long flags;
	
	c->irqs = &z8530_nop;
	c->max = 0;
	c->sync = 0;
	
	/*
	 *	Disable the PC DMA channels
	 */
	
	flags=FUNC0(); 
	FUNC2(c->rxdma);
	FUNC1(c->rxdma);
	
	c->rxdma_on = 0;
	
	FUNC2(c->txdma);
	FUNC1(c->txdma);
	FUNC5(flags);
	
	c->txdma_on = 0;
	c->tx_dma_used = 0;

	FUNC6(c->lock, flags);

	/*
	 *	Disable DMA control mode
	 */
	 
	c->regs[R1]&= ~WT_RDY_ENAB;
	FUNC8(c, R1, c->regs[R1]);            
	c->regs[R1]&= ~(WT_RDY_RT|WT_FN_RDYFN|INT_ERR_Rx);
	c->regs[R1]|= INT_ALL_Rx;
	FUNC8(c, R1, c->regs[R1]);
	c->regs[R14]&= ~DTRREQ;
	FUNC8(c, R14, c->regs[R14]);   
	
	if(c->rx_buf[0])
	{
		FUNC3((unsigned long)c->rx_buf[0]);
		c->rx_buf[0]=NULL;
	}
	if(c->tx_dma_buf[0])
	{
		FUNC3((unsigned  long)c->tx_dma_buf[0]);
		c->tx_dma_buf[0]=NULL;
	}
	chk=FUNC4(c,R0);
	FUNC8(c, R3, c->regs[R3]);
	FUNC9(c,0);

	FUNC7(c->lock, flags);

	return 0;
}