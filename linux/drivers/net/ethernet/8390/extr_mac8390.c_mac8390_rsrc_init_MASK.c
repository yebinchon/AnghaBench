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
struct nubus_rsrc {struct nubus_board* board; } ;
struct nubus_dirent {int dummy; } ;
struct nubus_dir {int dummy; } ;
struct nubus_board {int slot; int slot_addr; int /*<<< orphan*/  dev; } ;
struct net_device {int base_addr; int* dev_addr; int mem_start; int mem_end; int /*<<< orphan*/  irq; } ;
typedef  enum mac8390_type { ____Placeholder_mac8390_type } mac8390_type ;

/* Variables and functions */
 int /*<<< orphan*/  CABLETRON_8390_BASE ; 
 int /*<<< orphan*/  CABLETRON_8390_MEM ; 
 int /*<<< orphan*/  DAYNA_8390_BASE ; 
 int /*<<< orphan*/  DAYNA_8390_MEM ; 
 int /*<<< orphan*/  INTERLAN_8390_BASE ; 
 int /*<<< orphan*/  INTERLAN_8390_MEM ; 
#define  MAC8390_CABLETRON 131 
#define  MAC8390_DAYNA 130 
#define  MAC8390_INTERLAN 129 
#define  MAC8390_KINETICS 128 
 int /*<<< orphan*/  NUBUS_RESID_MAC_ADDRESS ; 
 int /*<<< orphan*/  NUBUS_RESID_MINOR_BASEOS ; 
 int /*<<< orphan*/  NUBUS_RESID_MINOR_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct nubus_dir*,int /*<<< orphan*/ ,struct nubus_dirent*) ; 
 int FUNC5 (struct nubus_rsrc*,struct nubus_dir*) ; 
 int /*<<< orphan*/  FUNC6 (int*,struct nubus_dirent*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nubus_dir*) ; 
 int* useresources ; 

__attribute__((used)) static bool FUNC8(struct net_device *dev,
			      struct nubus_rsrc *fres,
			      enum mac8390_type cardtype)
{
	struct nubus_board *board = fres->board;
	struct nubus_dir dir;
	struct nubus_dirent ent;
	int offset;
	volatile unsigned short *i;

	dev->irq = FUNC0(board->slot);
	/* This is getting to be a habit */
	dev->base_addr = board->slot_addr | ((board->slot & 0xf) << 20);

	/*
	 * Get some Nubus info - we will trust the card's idea
	 * of where its memory and registers are.
	 */

	if (FUNC5(fres, &dir) == -1) {
		FUNC1(&board->dev,
			"Unable to get Nubus functional directory\n");
		return false;
	}

	/* Get the MAC address */
	if (FUNC4(&dir, NUBUS_RESID_MAC_ADDRESS, &ent) == -1) {
		FUNC2(&board->dev, "MAC address resource not found\n");
		return false;
	}

	FUNC6(dev->dev_addr, &ent, 6);

	if (useresources[cardtype] == 1) {
		FUNC7(&dir);
		if (FUNC4(&dir, NUBUS_RESID_MINOR_BASEOS,
				    &ent) == -1) {
			FUNC1(&board->dev,
				"Memory offset resource not found\n");
			return false;
		}
		FUNC6(&offset, &ent, 4);
		dev->mem_start = dev->base_addr + offset;
		/* yes, this is how the Apple driver does it */
		dev->base_addr = dev->mem_start + 0x10000;
		FUNC7(&dir);
		if (FUNC4(&dir, NUBUS_RESID_MINOR_LENGTH,
				    &ent) == -1) {
			FUNC2(&board->dev,
				 "Memory length resource not found, probing\n");
			offset = FUNC3(dev->mem_start);
		} else {
			FUNC6(&offset, &ent, 4);
		}
		dev->mem_end = dev->mem_start + offset;
	} else {
		switch (cardtype) {
		case MAC8390_KINETICS:
		case MAC8390_DAYNA: /* it's the same */
			dev->base_addr = (int)(board->slot_addr +
					       DAYNA_8390_BASE);
			dev->mem_start = (int)(board->slot_addr +
					       DAYNA_8390_MEM);
			dev->mem_end = dev->mem_start +
				       FUNC3(dev->mem_start);
			break;
		case MAC8390_INTERLAN:
			dev->base_addr = (int)(board->slot_addr +
					       INTERLAN_8390_BASE);
			dev->mem_start = (int)(board->slot_addr +
					       INTERLAN_8390_MEM);
			dev->mem_end = dev->mem_start +
				       FUNC3(dev->mem_start);
			break;
		case MAC8390_CABLETRON:
			dev->base_addr = (int)(board->slot_addr +
					       CABLETRON_8390_BASE);
			dev->mem_start = (int)(board->slot_addr +
					       CABLETRON_8390_MEM);
			/* The base address is unreadable if 0x00
			 * has been written to the command register
			 * Reset the chip by writing E8390_NODMA +
			 *   E8390_PAGE0 + E8390_STOP just to be
			 *   sure
			 */
			i = (void *)dev->base_addr;
			*i = 0x21;
			dev->mem_end = dev->mem_start +
				       FUNC3(dev->mem_start);
			break;

		default:
			FUNC1(&board->dev,
				"No known base address for card type\n");
			return false;
		}
	}

	return true;
}