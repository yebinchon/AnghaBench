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
struct mvneta_bm {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (struct device_node*) ; 
 struct mvneta_bm* FUNC1 (struct platform_device*) ; 

struct mvneta_bm *FUNC2(struct device_node *node)
{
	struct platform_device *pdev = FUNC0(node);

	return pdev ? FUNC1(pdev) : NULL;
}