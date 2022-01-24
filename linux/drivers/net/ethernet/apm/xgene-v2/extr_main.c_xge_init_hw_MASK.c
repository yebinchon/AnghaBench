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
struct xge_pdata {int /*<<< orphan*/  nbufs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_BUFS ; 
 struct xge_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC0(ndev);
	int ret;

	ret = FUNC2(ndev);
	if (ret)
		return ret;

	FUNC1(ndev);
	pdata->nbufs = NUM_BUFS;

	return 0;
}