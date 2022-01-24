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
typedef  int /*<<< orphan*/  u_long ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {TYPE_1__* phy; } ;
struct TYPE_2__ {scalar_t__ id; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ BROADCOM_T4 ; 
 int /*<<< orphan*/  DE4X5_MII ; 
 int DEBUG_MII ; 
 int MII_CR ; 
 int MII_ID0 ; 
 int MII_ID1 ; 
 int MII_SR ; 
 int de4x5_debug ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, int k)
{
    struct de4x5_private *lp = FUNC1(dev);
    u_long iobase = dev->base_addr;

    if (de4x5_debug & DEBUG_MII) {
	FUNC2("\nMII device address: %d\n", lp->phy[k].addr);
	FUNC2("MII CR:  %x\n",FUNC0(MII_CR,lp->phy[k].addr,DE4X5_MII));
	FUNC2("MII SR:  %x\n",FUNC0(MII_SR,lp->phy[k].addr,DE4X5_MII));
	FUNC2("MII ID0: %x\n",FUNC0(MII_ID0,lp->phy[k].addr,DE4X5_MII));
	FUNC2("MII ID1: %x\n",FUNC0(MII_ID1,lp->phy[k].addr,DE4X5_MII));
	if (lp->phy[k].id != BROADCOM_T4) {
	    FUNC2("MII ANA: %x\n",FUNC0(0x04,lp->phy[k].addr,DE4X5_MII));
	    FUNC2("MII ANC: %x\n",FUNC0(0x05,lp->phy[k].addr,DE4X5_MII));
	}
	FUNC2("MII 16:  %x\n",FUNC0(0x10,lp->phy[k].addr,DE4X5_MII));
	if (lp->phy[k].id != BROADCOM_T4) {
	    FUNC2("MII 17:  %x\n",FUNC0(0x11,lp->phy[k].addr,DE4X5_MII));
	    FUNC2("MII 18:  %x\n",FUNC0(0x12,lp->phy[k].addr,DE4X5_MII));
	} else {
	    FUNC2("MII 20:  %x\n",FUNC0(0x14,lp->phy[k].addr,DE4X5_MII));
	}
    }
}