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
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct arcnet_local {scalar_t__ backplane; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct arcnet_local* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 struct net_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				   struct device_attribute *attr,
				   char *buf)
{
	struct net_device *net_dev = FUNC2(dev);
	struct arcnet_local *lp = FUNC0(net_dev);

	return FUNC1(buf, "%s\n", lp->backplane ? "true" : "false");
}