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
struct net_device {unsigned int base_addr; int* dev_addr; int mtu; } ;
struct el3_private {int advertising; int /*<<< orphan*/  window_lock; int /*<<< orphan*/  phys; scalar_t__ autoselect; } ;

/* Variables and functions */
 int AckIntr ; 
 int AdapterFailure ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EL3_CMD ; 
 int IntLatch ; 
 int IntReq ; 
 unsigned int RunnerRdCtrl ; 
 unsigned int RunnerWrCtrl ; 
 int RxComplete ; 
 int RxEarly ; 
 int RxEnable ; 
 int RxReset ; 
 int SetIntrEnb ; 
 int SetStatusEnb ; 
 int StatsDisable ; 
 int StatsEnable ; 
 int StatsFull ; 
 int TotalReset ; 
 int TxAvailable ; 
 int TxEnable ; 
 int TxReset ; 
 scalar_t__ Wn3_Config ; 
 unsigned int Wn3_MAC_Ctrl ; 
 unsigned int Wn3_Options ; 
 unsigned int Wn4_NetDiag ; 
 int /*<<< orphan*/  auto_polarity ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ,int,int) ; 
 struct el3_private* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev)
{
	struct el3_private *lp = FUNC7(dev);
	int i;
	unsigned int ioaddr = dev->base_addr;
	unsigned long flags;

	FUNC14(dev, TotalReset|0x10);

	FUNC12(&lp->window_lock, flags);
	/* Clear any transactions in progress. */
	FUNC10(0, ioaddr + RunnerWrCtrl);
	FUNC10(0, ioaddr + RunnerRdCtrl);

	/* Set the station address and mask. */
	FUNC0(2);
	for (i = 0; i < 6; i++)
		FUNC8(dev->dev_addr[i], ioaddr + i);
	for (; i < 12; i+=2)
		FUNC10(0, ioaddr + i);

	/* Reset config options */
	FUNC0(3);
	FUNC8((dev->mtu > 1500 ? 0x40 : 0), ioaddr + Wn3_MAC_Ctrl);
	FUNC9((lp->autoselect ? 0x01000000 : 0) | 0x0062001b,
		 ioaddr + Wn3_Config);
	/* Roadrunner only: Turn on the MII transceiver. */
	FUNC10(0x8040, ioaddr + Wn3_Options);
	FUNC3(1);
	FUNC10(0xc040, ioaddr + Wn3_Options);
	FUNC0(1);
	FUNC13(&lp->window_lock, flags);
	
	FUNC14(dev, TxReset);
	FUNC14(dev, RxReset);
	FUNC3(1);
	FUNC12(&lp->window_lock, flags);
	FUNC0(3);
	FUNC10(0x8040, ioaddr + Wn3_Options);

	/* Switch to the stats window, and clear all stats by reading. */
	FUNC10(StatsDisable, ioaddr + EL3_CMD);
	FUNC0(6);
	for (i = 0; i < 10; i++)
		FUNC1(ioaddr + i);
	FUNC2(ioaddr + 10);
	FUNC2(ioaddr + 12);
	FUNC0(4);
	FUNC1(ioaddr + 12);
	FUNC1(ioaddr + 13);

	/* .. enable any extra statistics bits.. */
	FUNC10(0x0040, ioaddr + Wn4_NetDiag);
	
	FUNC0(1);
	FUNC13(&lp->window_lock, flags);
	
	/* .. re-sync MII and re-fill what NWay is advertising. */
	FUNC5(ioaddr, 32);
	FUNC6(ioaddr, lp->phys, 4, lp->advertising);
	if (!auto_polarity) {
		/* works for TDK 78Q2120 series MII's */
		i = FUNC4(ioaddr, lp->phys, 16) | 0x20;
		FUNC6(ioaddr, lp->phys, 16, i);
	}

	FUNC12(&lp->window_lock, flags);
	/* Switch to register set 1 for normal use, just for TxFree. */
	FUNC11(dev);
	FUNC13(&lp->window_lock, flags);
	FUNC10(StatsEnable, ioaddr + EL3_CMD); /* Turn on statistics. */
	FUNC10(RxEnable, ioaddr + EL3_CMD); /* Enable the receiver. */
	FUNC10(TxEnable, ioaddr + EL3_CMD); /* Enable transmitter. */
	/* Allow status bits to be seen. */
	FUNC10(SetStatusEnb | 0xff, ioaddr + EL3_CMD);
	/* Ack all pending events, and set active indicator mask. */
	FUNC10(AckIntr | IntLatch | TxAvailable | RxEarly | IntReq,
		 ioaddr + EL3_CMD);
	FUNC10(SetIntrEnb | IntLatch | TxAvailable | RxComplete | StatsFull
		 | AdapterFailure | RxEarly, ioaddr + EL3_CMD);
}