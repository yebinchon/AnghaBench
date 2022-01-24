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
struct x25_asy {unsigned char* xbuff; int xleft; unsigned char* xhead; unsigned char* rbuff; int rcount; int buffsize; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {int mtu; TYPE_1__ stats; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SLF_ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 struct x25_asy* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (unsigned char**,unsigned char*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, int newmtu)
{
	struct x25_asy *sl = FUNC3(dev);
	unsigned char *xbuff, *rbuff;
	int len;

	len = 2 * newmtu;
	xbuff = FUNC1(len + 4, GFP_ATOMIC);
	rbuff = FUNC1(len + 4, GFP_ATOMIC);

	if (xbuff == NULL || rbuff == NULL) {
		FUNC0(xbuff);
		FUNC0(rbuff);
		return -ENOMEM;
	}

	FUNC5(&sl->lock);
	xbuff    = FUNC7(&sl->xbuff, xbuff);
	if (sl->xleft)  {
		if (sl->xleft <= len)  {
			FUNC2(sl->xbuff, sl->xhead, sl->xleft);
		} else  {
			sl->xleft = 0;
			dev->stats.tx_dropped++;
		}
	}
	sl->xhead = sl->xbuff;

	rbuff	 = FUNC7(&sl->rbuff, rbuff);
	if (sl->rcount)  {
		if (sl->rcount <= len) {
			FUNC2(sl->rbuff, rbuff, sl->rcount);
		} else  {
			sl->rcount = 0;
			dev->stats.rx_over_errors++;
			FUNC4(SLF_ERROR, &sl->flags);
		}
	}

	dev->mtu    = newmtu;
	sl->buffsize = len;

	FUNC6(&sl->lock);

	FUNC0(xbuff);
	FUNC0(rbuff);
	return 0;
}