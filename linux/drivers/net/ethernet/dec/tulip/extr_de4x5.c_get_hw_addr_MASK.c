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
typedef  int /*<<< orphan*/  u_long ;
typedef  void* u_char ;
struct net_device {int* dev_addr; int /*<<< orphan*/  base_addr; } ;
struct TYPE_2__ {scalar_t__* ieee_addr; } ;
struct de4x5_private {scalar_t__ bus; scalar_t__ chipset; TYPE_1__ srom; } ;

/* Variables and functions */
 int ACCTON ; 
 scalar_t__ DC21040 ; 
 int /*<<< orphan*/  DE4X5_APROM ; 
 int /*<<< orphan*/  EISA_APROM ; 
 int ETH_ALEN ; 
 scalar_t__ PCI ; 
 int SMC ; 
 int FUNC0 (struct de4x5_private*) ; 
 scalar_t__ dec_only ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  powermac ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int FUNC6 (struct net_device*,int) ; 

__attribute__((used)) static int
FUNC7(struct net_device *dev)
{
    u_long iobase = dev->base_addr;
    int broken, i, k, tmp, status = 0;
    u_short j,chksum;
    struct de4x5_private *lp = FUNC4(dev);

    broken = FUNC0(lp);

    for (i=0,k=0,j=0;j<3;j++) {
	k <<= 1;
	if (k > 0xffff) k-=0xffff;

	if (lp->bus == PCI) {
	    if (lp->chipset == DC21040) {
		while ((tmp = FUNC2(DE4X5_APROM)) < 0);
		k += (u_char) tmp;
		dev->dev_addr[i++] = (u_char) tmp;
		while ((tmp = FUNC2(DE4X5_APROM)) < 0);
		k += (u_short) (tmp << 8);
		dev->dev_addr[i++] = (u_char) tmp;
	    } else if (!broken) {
		dev->dev_addr[i] = (u_char) lp->srom.ieee_addr[i]; i++;
		dev->dev_addr[i] = (u_char) lp->srom.ieee_addr[i]; i++;
	    } else if ((broken == SMC) || (broken == ACCTON)) {
		dev->dev_addr[i] = *((u_char *)&lp->srom + i); i++;
		dev->dev_addr[i] = *((u_char *)&lp->srom + i); i++;
	    }
	} else {
	    k += (u_char) (tmp = FUNC1(EISA_APROM));
	    dev->dev_addr[i++] = (u_char) tmp;
	    k += (u_short) ((tmp = FUNC1(EISA_APROM)) << 8);
	    dev->dev_addr[i++] = (u_char) tmp;
	}

	if (k > 0xffff) k-=0xffff;
    }
    if (k == 0xffff) k=0;

    if (lp->bus == PCI) {
	if (lp->chipset == DC21040) {
	    while ((tmp = FUNC2(DE4X5_APROM)) < 0);
	    chksum = (u_char) tmp;
	    while ((tmp = FUNC2(DE4X5_APROM)) < 0);
	    chksum |= (u_short) (tmp << 8);
	    if ((k != chksum) && (dec_only)) status = -1;
	}
    } else {
	chksum = (u_char) FUNC1(EISA_APROM);
	chksum |= (u_short) (FUNC1(EISA_APROM) << 8);
	if ((k != chksum) && (dec_only)) status = -1;
    }

    /* If possible, try to fix a broken card - SMC only so far */
    FUNC5(dev, broken);

#ifdef CONFIG_PPC_PMAC
    /*
    ** If the address starts with 00 a0, we have to bit-reverse
    ** each byte of the address.
    */
    if ( machine_is(powermac) &&
	 (dev->dev_addr[0] == 0) &&
	 (dev->dev_addr[1] == 0xa0) )
    {
	    for (i = 0; i < ETH_ALEN; ++i)
	    {
		    int x = dev->dev_addr[i];
		    x = ((x & 0xf) << 4) + ((x & 0xf0) >> 4);
		    x = ((x & 0x33) << 2) + ((x & 0xcc) >> 2);
		    dev->dev_addr[i] = ((x & 0x55) << 1) + ((x & 0xaa) >> 1);
	    }
    }
#endif /* CONFIG_PPC_PMAC */

    /* Test for a bad enet address */
    status = FUNC6(dev, status);

    return status;
}