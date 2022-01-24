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
typedef  int u_short ;
struct pcmcia_device {TYPE_1__** resource; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; } ;
struct TYPE_2__ {scalar_t__ flags; } ;

/* Variables and functions */
 scalar_t__ BANK_SELECT ; 
 scalar_t__ BASE_ADDR ; 
 int CFG_16BIT ; 
 scalar_t__ CONFIG ; 
 scalar_t__ CONTROL ; 
 int ENODEV ; 
 scalar_t__ IO_DATA_PATH_WIDTH_AUTO ; 
 scalar_t__ REVISION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC10(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    unsigned int ioaddr = dev->base_addr;
    int width;
    u_short s;

    FUNC0(1);
    if (FUNC2(ioaddr + BANK_SELECT) >> 8 != 0x33) {
	/* Try powering up the chip */
	FUNC6(0, ioaddr + CONTROL);
	FUNC3(55);
    }

    /* Try setting bus width */
    width = (link->resource[0]->flags == IO_DATA_PATH_WIDTH_AUTO);
    s = FUNC1(ioaddr + CONFIG);
    if (width)
	s |= CFG_16BIT;
    else
	s &= ~CFG_16BIT;
    FUNC5(s, ioaddr + CONFIG);

    /* Check Base Address Register to make sure bus width is OK */
    s = FUNC2(ioaddr + BASE_ADDR);
    if ((FUNC2(ioaddr + BANK_SELECT) >> 8 == 0x33) &&
	((s >> 8) != (s & 0xff))) {
	FUNC0(3);
	s = FUNC2(ioaddr + REVISION);
	return s & 0xff;
    }

    if (width) {
	    FUNC4(dev, "using 8-bit IO window\n");

	    FUNC9(link);
	    FUNC7(link);
	    FUNC8(link);
	    return FUNC10(link);
    }
    return -ENODEV;
}