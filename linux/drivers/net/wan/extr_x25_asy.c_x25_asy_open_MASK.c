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
struct x25_asy {unsigned long buffsize; int flags; int /*<<< orphan*/ * rbuff; int /*<<< orphan*/ * xbuff; scalar_t__ xleft; scalar_t__ rcount; int /*<<< orphan*/ * tty; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LAPB_OK ; 
 int SLF_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct x25_asy* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  x25_asy_callbacks ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct x25_asy *sl = FUNC3(dev);
	unsigned long len;
	int err;

	if (sl->tty == NULL)
		return -ENODEV;

	/*
	 * Allocate the X.25 frame buffers:
	 *
	 * rbuff	Receive buffer.
	 * xbuff	Transmit buffer.
	 */

	len = dev->mtu * 2;

	sl->rbuff = FUNC1(len + 4, GFP_KERNEL);
	if (sl->rbuff == NULL)
		goto norbuff;
	sl->xbuff = FUNC1(len + 4, GFP_KERNEL);
	if (sl->xbuff == NULL)
		goto noxbuff;

	sl->buffsize = len;
	sl->rcount   = 0;
	sl->xleft    = 0;
	sl->flags   &= (1 << SLF_INUSE);      /* Clear ESCAPE & ERROR flags */

	FUNC4(dev);

	/*
	 *	Now attach LAPB
	 */
	err = FUNC2(dev, &x25_asy_callbacks);
	if (err == LAPB_OK)
		return 0;

	/* Cleanup */
	FUNC0(sl->xbuff);
	sl->xbuff = NULL;
noxbuff:
	FUNC0(sl->rbuff);
	sl->rbuff = NULL;
norbuff:
	return -ENOMEM;
}