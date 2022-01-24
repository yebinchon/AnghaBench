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
struct xge_pdata {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,void*) ; 
 struct xge_pdata* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xge_pdata*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, void *addr)
{
	struct xge_pdata *pdata = FUNC1(ndev);
	int ret;

	ret = FUNC0(ndev, addr);
	if (ret)
		return ret;

	FUNC2(pdata);

	return 0;
}