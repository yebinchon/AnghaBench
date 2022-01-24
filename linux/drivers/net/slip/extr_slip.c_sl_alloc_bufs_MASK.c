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
struct slip {int mtu; unsigned long buffsize; int /*<<< orphan*/  lock; scalar_t__ xbits; scalar_t__ xdata; int /*<<< orphan*/  slcomp; int /*<<< orphan*/  cbuff; int /*<<< orphan*/  xbuff; int /*<<< orphan*/  rbuff; scalar_t__ xleft; scalar_t__ rcount; int /*<<< orphan*/ * tty; } ;
typedef  char slcompress ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC8(struct slip *sl, int mtu)
{
	int err = -ENOBUFS;
	unsigned long len;
	char *rbuff = NULL;
	char *xbuff = NULL;
#ifdef SL_INCLUDE_CSLIP
	char *cbuff = NULL;
	struct slcompress *slcomp = NULL;
#endif

	/*
	 * Allocate the SLIP frame buffers:
	 *
	 * rbuff	Receive buffer.
	 * xbuff	Transmit buffer.
	 * cbuff        Temporary compression buffer.
	 */
	len = mtu * 2;

	/*
	 * allow for arrival of larger UDP packets, even if we say not to
	 * also fixes a bug in which SunOS sends 512-byte packets even with
	 * an MSS of 128
	 */
	if (len < 576 * 2)
		len = 576 * 2;
	rbuff = FUNC2(len + 4, GFP_KERNEL);
	if (rbuff == NULL)
		goto err_exit;
	xbuff = FUNC2(len + 4, GFP_KERNEL);
	if (xbuff == NULL)
		goto err_exit;
#ifdef SL_INCLUDE_CSLIP
	cbuff = kmalloc(len + 4, GFP_KERNEL);
	if (cbuff == NULL)
		goto err_exit;
	slcomp = slhc_init(16, 16);
	if (IS_ERR(slcomp))
		goto err_exit;
#endif
	FUNC5(&sl->lock);
	if (sl->tty == NULL) {
		FUNC6(&sl->lock);
		err = -ENODEV;
		goto err_exit;
	}
	sl->mtu	     = mtu;
	sl->buffsize = len;
	sl->rcount   = 0;
	sl->xleft    = 0;
	rbuff = FUNC7(&sl->rbuff, rbuff);
	xbuff = FUNC7(&sl->xbuff, xbuff);
#ifdef SL_INCLUDE_CSLIP
	cbuff = xchg(&sl->cbuff, cbuff);
	slcomp = xchg(&sl->slcomp, slcomp);
#endif
#ifdef CONFIG_SLIP_MODE_SLIP6
	sl->xdata    = 0;
	sl->xbits    = 0;
#endif
	FUNC6(&sl->lock);
	err = 0;

	/* Cleanup */
err_exit:
#ifdef SL_INCLUDE_CSLIP
	kfree(cbuff);
	slhc_free(slcomp);
#endif
	FUNC1(xbuff);
	FUNC1(rbuff);
	return err;
}