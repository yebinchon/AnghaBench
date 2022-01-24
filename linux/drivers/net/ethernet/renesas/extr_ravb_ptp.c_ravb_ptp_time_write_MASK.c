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
typedef  int u32 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct ravb_private {struct net_device* ndev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GCCR ; 
 int GCCR_LTO ; 
 int /*<<< orphan*/  GCCR_TCR_RESET ; 
 int /*<<< orphan*/  GTO0 ; 
 int /*<<< orphan*/  GTO1 ; 
 int /*<<< orphan*/  GTO2 ; 
 int FUNC0 (struct ravb_private*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ravb_private *priv,
				const struct timespec64 *ts)
{
	struct net_device *ndev = priv->ndev;
	int error;
	u32 gccr;

	error = FUNC0(priv, GCCR_TCR_RESET);
	if (error)
		return error;

	gccr = FUNC1(ndev, GCCR);
	if (gccr & GCCR_LTO)
		return -EBUSY;
	FUNC2(ndev, ts->tv_nsec, GTO0);
	FUNC2(ndev, ts->tv_sec,  GTO1);
	FUNC2(ndev, (ts->tv_sec >> 32) & 0xffff, GTO2);
	FUNC2(ndev, gccr | GCCR_LTO, GCCR);

	return 0;
}