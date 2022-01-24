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

/* Variables and functions */
 struct net_device* FUNC0 (struct net_device const*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device *
FUNC1(const struct net_device *br_dev,
				 unsigned char *dmac)
{
	return FUNC0(br_dev, dmac, 0);
}