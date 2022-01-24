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
struct net_device {scalar_t__ base_addr; } ;
struct frad_local {int type; int state; } ;

/* Variables and functions */
 int SDLA_CPUEN ; 
 scalar_t__ SDLA_REG_CONTROL ; 
 scalar_t__ SDLA_REG_Z80_CONTROL ; 
#define  SDLA_S502A 131 
 int SDLA_S502A_NMI ; 
 int SDLA_S502A_START ; 
#define  SDLA_S502E 130 
 int SDLA_S502E_CPUEN ; 
#define  SDLA_S507 129 
#define  SDLA_S508 128 
 struct frad_local* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct frad_local *flp;

	flp = FUNC0(dev);
	switch(flp->type)
	{
		case SDLA_S502A:
			FUNC1(SDLA_S502A_NMI, dev->base_addr + SDLA_REG_CONTROL);
			FUNC1(SDLA_S502A_START, dev->base_addr + SDLA_REG_CONTROL);
			flp->state = SDLA_S502A_START;
			break;
		case SDLA_S502E:
			FUNC1(SDLA_S502E_CPUEN, dev->base_addr + SDLA_REG_Z80_CONTROL);
			FUNC1(0x00, dev->base_addr + SDLA_REG_CONTROL);
			flp->state = 0;
			break;
		case SDLA_S507:
			flp->state |= SDLA_CPUEN;
			FUNC1(flp->state, dev->base_addr + SDLA_REG_CONTROL);
			break;
		case SDLA_S508:
			flp->state |= SDLA_CPUEN;
			FUNC1(flp->state, dev->base_addr + SDLA_REG_CONTROL);
			break;
	}
}