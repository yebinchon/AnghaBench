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
struct bnx2x {int msg_enable; } ;

/* Variables and functions */
 int BNX2X_MSG_MCP ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, u32 level)
{
	struct bnx2x *bp = FUNC3(dev);

	if (FUNC2(CAP_NET_ADMIN)) {
		/* dump MCP trace */
		if (FUNC0(bp) && (level & BNX2X_MSG_MCP))
			FUNC1(bp, KERN_INFO);
		bp->msg_enable = level;
	}
}