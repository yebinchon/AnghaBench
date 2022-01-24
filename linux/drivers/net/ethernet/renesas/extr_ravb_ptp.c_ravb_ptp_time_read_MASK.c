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
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct ravb_private {struct net_device* ndev; } ;
struct net_device {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  GCCR_TCR_CAPTURE ; 
 int /*<<< orphan*/  GCT0 ; 
 int /*<<< orphan*/  GCT1 ; 
 int /*<<< orphan*/  GCT2 ; 
 int FUNC0 (struct ravb_private*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ravb_private *priv, struct timespec64 *ts)
{
	struct net_device *ndev = priv->ndev;
	int error;

	error = FUNC0(priv, GCCR_TCR_CAPTURE);
	if (error)
		return error;

	ts->tv_nsec = FUNC1(ndev, GCT0);
	ts->tv_sec  = FUNC1(ndev, GCT1) |
		((s64)FUNC1(ndev, GCT2) << 32);

	return 0;
}