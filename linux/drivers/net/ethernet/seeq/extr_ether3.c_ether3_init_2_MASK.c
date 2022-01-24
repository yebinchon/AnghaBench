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
struct net_device {int flags; int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_3__ {int config1; int config2; int command; } ;
struct TYPE_4__ {int rx_head; TYPE_1__ regs; } ;

/* Variables and functions */
 int CFG1_BUFSELSTAT0 ; 
 int CFG1_DMABURST8 ; 
 int CFG1_LOCBUFMEM ; 
 int CFG1_RECVCOMPSTAT0 ; 
 int CFG1_RECVPROMISC ; 
 int CFG1_RECVSPECBRMULTI ; 
 int CFG1_RECVSPECBROAD ; 
 int CFG1_TRANSEND ; 
 int CFG2_CTRLO ; 
 int CFG2_ERRENCRC ; 
 int CFG2_RECVCRC ; 
 int IFF_MULTICAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  REG_BUFWIN ; 
 int /*<<< orphan*/  REG_COMMAND ; 
 int /*<<< orphan*/  REG_CONFIG1 ; 
 int /*<<< orphan*/  REG_CONFIG2 ; 
 int /*<<< orphan*/  REG_RECVEND ; 
 int /*<<< orphan*/  REG_RECVPTR ; 
 int /*<<< orphan*/  REG_TRANSMITPTR ; 
 int TX_END ; 
 int /*<<< orphan*/  buffer_write ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	int i;

	FUNC5(dev)->regs.config1 = CFG1_RECVCOMPSTAT0|CFG1_DMABURST8;
	FUNC5(dev)->regs.config2 = CFG2_CTRLO|CFG2_RECVCRC|CFG2_ERRENCRC;
	FUNC5(dev)->regs.command = 0;

	/*
	 * Set up our hardware address
	 */
	FUNC1(FUNC5(dev)->regs.config1 | CFG1_BUFSELSTAT0, REG_CONFIG1);
	for (i = 0; i < 6; i++)
		FUNC0(dev->dev_addr[i], REG_BUFWIN);

	if (dev->flags & IFF_PROMISC)
		FUNC5(dev)->regs.config1 |= CFG1_RECVPROMISC;
	else if (dev->flags & IFF_MULTICAST)
		FUNC5(dev)->regs.config1 |= CFG1_RECVSPECBRMULTI;
	else
		FUNC5(dev)->regs.config1 |= CFG1_RECVSPECBROAD;

	/*
	 * There is a problem with the NQ8005 in that it occasionally loses the
	 * last two bytes.  To get round this problem, we receive the CRC as
	 * well.  That way, if we do lose the last two, then it doesn't matter.
	 */
	FUNC1(FUNC5(dev)->regs.config1 | CFG1_TRANSEND, REG_CONFIG1);
	FUNC1((TX_END>>8) - 1, REG_BUFWIN);
	FUNC1(FUNC5(dev)->rx_head, REG_RECVPTR);
	FUNC1(0, REG_TRANSMITPTR);
	FUNC1(FUNC5(dev)->rx_head >> 8, REG_RECVEND);
	FUNC1(FUNC5(dev)->regs.config2, REG_CONFIG2);
	FUNC1(FUNC5(dev)->regs.config1 | CFG1_LOCBUFMEM, REG_CONFIG1);
	FUNC1(FUNC5(dev)->regs.command, REG_COMMAND);

	i = FUNC2(dev, 0x5A);
	if(i)
		return i;
	i = FUNC2(dev, 0x1E);
	if(i)
		return i;

	FUNC3(dev, buffer_write, 0);
	FUNC4(dev, 0);
	return 0;
}