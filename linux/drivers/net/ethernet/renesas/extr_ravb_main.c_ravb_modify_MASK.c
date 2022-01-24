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
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int) ; 

void FUNC2(struct net_device *ndev, enum ravb_reg reg, u32 clear,
		 u32 set)
{
	FUNC1(ndev, (FUNC0(ndev, reg) & ~clear) | set, reg);
}