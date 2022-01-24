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
struct net_device {unsigned int base_addr; scalar_t__ if_port; } ;
struct el3_private {int media_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EL3_CMD ; 
 int MEDIA_LED ; 
 int MEDIA_TP ; 
 int StartCoax ; 
 int StopCoax ; 
 unsigned int WN4_MEDIA ; 
 struct el3_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int if_port)
{
	struct el3_private *lp = FUNC1(dev);
	unsigned int ioaddr = dev->base_addr;

	FUNC0(0);
	switch (if_port) {
	case 0:
	case 1:
		FUNC2(0, ioaddr + 6);
		break;
	case 2:
		FUNC2(3<<14, ioaddr + 6);
		break;
	case 3:
		FUNC2(1<<14, ioaddr + 6);
		break;
	}
	/* On PCMCIA, this just turns on the LED */
	FUNC2((if_port == 2) ? StartCoax : StopCoax, ioaddr + EL3_CMD);
	/* 10baseT interface, enable link beat and jabber check. */
	FUNC0(4);
	FUNC2(MEDIA_LED | ((if_port < 2) ? MEDIA_TP : 0), ioaddr + WN4_MEDIA);
	FUNC0(1);
	if (if_port == 2)
		lp->media_status = ((dev->if_port == 0) ? 0x8000 : 0x4000);
	else
		lp->media_status = ((dev->if_port == 0) ? 0x4010 : 0x8800);
}