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
struct net_device {int dummy; } ;
typedef  enum ravb_reg { ____Placeholder_ravb_reg } ravb_reg ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct net_device *ndev, enum ravb_reg reg, u32 mask, u32 value)
{
	int i;

	for (i = 0; i < 10000; i++) {
		if ((FUNC0(ndev, reg) & mask) == value)
			return 0;
		FUNC1(10);
	}
	return -ETIMEDOUT;
}