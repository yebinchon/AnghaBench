#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {TYPE_1__** resource; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; } ;
struct local_info {int /*<<< orphan*/ * base; } ;
struct TYPE_4__ {int flags; scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int WIN_DATA_WIDTH_8 ; 
 int WIN_ENABLE ; 
 int WIN_MEMORY_TYPE_AM ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct local_info* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct pcmcia_device*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pcmcia_device*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct pcmcia_device *link)
{
    int i;
    struct net_device *dev = link->priv;
    unsigned int ioaddr;
    struct local_info *lp = FUNC3(dev);

    /* Allocate a small memory window */
    link->resource[3]->flags = WIN_DATA_WIDTH_8|WIN_MEMORY_TYPE_AM|WIN_ENABLE;
    link->resource[3]->start = link->resource[3]->end = 0;
    i = FUNC5(link, link->resource[3], 0);
    if (i != 0)
	return -1;

    lp->base = FUNC0(link->resource[3]->start,
		       FUNC6(link->resource[3]));
    if (lp->base == NULL) {
	FUNC2(dev, "ioremap failed\n");
	return -1;
    }

    i = FUNC4(link, link->resource[3], 0);
    if (i != 0) {
	FUNC1(lp->base);
	lp->base = NULL;
	return -1;
    }
    
    ioaddr = dev->base_addr;
    FUNC7(0x47, lp->base+0x800);	/* Config Option Register of LAN */
    FUNC7(0x0,  lp->base+0x802);	/* Config and Status Register */

    FUNC7(ioaddr & 0xff, lp->base+0x80a);	  /* I/O Base(Low) of LAN */
    FUNC7((ioaddr >> 8) & 0xff, lp->base+0x80c); /* I/O Base(High) of LAN */
   
    FUNC7(0x45, lp->base+0x820);	/* Config Option Register of Modem */
    FUNC7(0x8,  lp->base+0x822);	/* Config and Status Register */

    return 0;

}