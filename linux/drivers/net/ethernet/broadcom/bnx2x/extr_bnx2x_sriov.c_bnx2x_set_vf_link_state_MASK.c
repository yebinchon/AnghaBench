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
struct bnx2x_virtf {int link_cfg; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 struct bnx2x_virtf* FUNC0 (struct bnx2x*,int) ; 
 int EINVAL ; 
 int FUNC1 (struct bnx2x*,int) ; 
 struct bnx2x* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev, int idx, int link_state)
{
	struct bnx2x *bp = FUNC2(dev);
	struct bnx2x_virtf *vf = FUNC0(bp, idx);

	if (!vf)
		return -EINVAL;

	if (vf->link_cfg == link_state)
		return 0; /* nothing todo */

	vf->link_cfg = link_state;

	return FUNC1(bp, idx);
}