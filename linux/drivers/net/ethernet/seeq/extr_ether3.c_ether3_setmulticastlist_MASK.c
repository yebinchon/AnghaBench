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
struct net_device {int flags; } ;
struct TYPE_3__ {int config1; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;

/* Variables and functions */
 int CFG1_LOCBUFMEM ; 
 int CFG1_RECVPROMISC ; 
 int CFG1_RECVSPECBRMULTI ; 
 int CFG1_RECVSPECBROAD ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  REG_CONFIG1 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 TYPE_2__* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	FUNC2(dev)->regs.config1 &= ~CFG1_RECVPROMISC;

	if (dev->flags & IFF_PROMISC) {
		/* promiscuous mode */
		FUNC2(dev)->regs.config1 |= CFG1_RECVPROMISC;
	} else if (dev->flags & IFF_ALLMULTI || !FUNC1(dev)) {
		FUNC2(dev)->regs.config1 |= CFG1_RECVSPECBRMULTI;
	} else
		FUNC2(dev)->regs.config1 |= CFG1_RECVSPECBROAD;

	FUNC0(FUNC2(dev)->regs.config1 | CFG1_LOCBUFMEM, REG_CONFIG1);
}