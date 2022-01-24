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
typedef  int /*<<< orphan*/  u32 ;
struct cas {scalar_t__ regs; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MAC_RX_CFG_HASH_FILTER_EN ; 
 int /*<<< orphan*/  MAC_RX_CFG_PROMISC_EN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static u32 FUNC3(struct cas *cp)
{
	u32 rxcfg = 0;
	int i;

	if (cp->dev->flags & IFF_PROMISC) {
		rxcfg |= MAC_RX_CFG_PROMISC_EN;

	} else if (cp->dev->flags & IFF_ALLMULTI) {
	    	for (i=0; i < 16; i++)
			FUNC2(0xFFFF, cp->regs + FUNC0(i));
		rxcfg |= MAC_RX_CFG_HASH_FILTER_EN;

	} else {
		FUNC1(cp);
		rxcfg |= MAC_RX_CFG_HASH_FILTER_EN;
	}

	return rxcfg;
}