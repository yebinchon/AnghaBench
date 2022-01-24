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
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC0(pdev);
	int ret = FUNC1(ndev);

	return ret;
}