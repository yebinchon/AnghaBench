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
typedef  int u_char ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int gepc; } ;
struct de4x5_private {int infoleaf_offset; scalar_t__ chipset; TYPE_1__ cache; int /*<<< orphan*/  srom; } ;

/* Variables and functions */
 int BLOCK_LEN ; 
 int /*<<< orphan*/  COMPACT_LEN ; 
 scalar_t__ DC21140 ; 
 int GEP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int,struct net_device*) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int*) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC1(dev);
    u_char *p = (u_char *)&lp->srom + lp->infoleaf_offset;
    u_char count;

    p+=2;
    if (lp->chipset == DC21140) {
	lp->cache.gepc = (*p++ | GEP_CTRL);
	FUNC0(lp->cache.gepc, dev);
    }

    /* Block count */
    count = *p++;

    /* Jump the infoblocks to find types */
    for (;count; --count) {
	if (*p < 128) {
	    p += COMPACT_LEN;
	} else if (*(p+1) == 5) {
	    FUNC4(dev, 1, p);
	    p += ((*p & BLOCK_LEN) + 1);
	} else if (*(p+1) == 4) {
	    p += ((*p & BLOCK_LEN) + 1);
	} else if (*(p+1) == 3) {
	    FUNC3(dev, 1, p);
	    p += ((*p & BLOCK_LEN) + 1);
	} else if (*(p+1) == 2) {
	    p += ((*p & BLOCK_LEN) + 1);
	} else if (*(p+1) == 1) {
	    FUNC2(dev, 1, p);
	    p += ((*p & BLOCK_LEN) + 1);
	} else {
	    p += ((*p & BLOCK_LEN) + 1);
	}
    }
}