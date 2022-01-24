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
typedef  int /*<<< orphan*/  u32 ;
struct ravb_private {struct net_device* ndev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCCR ; 
 int /*<<< orphan*/  GCCR_TCR ; 
 int /*<<< orphan*/  GCCR_TCR_NOREQ ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ravb_private *priv, u32 request)
{
	struct net_device *ndev = priv->ndev;
	int error;

	error = FUNC1(ndev, GCCR, GCCR_TCR, GCCR_TCR_NOREQ);
	if (error)
		return error;

	FUNC0(ndev, GCCR, request, request);
	return FUNC1(ndev, GCCR, GCCR_TCR, GCCR_TCR_NOREQ);
}