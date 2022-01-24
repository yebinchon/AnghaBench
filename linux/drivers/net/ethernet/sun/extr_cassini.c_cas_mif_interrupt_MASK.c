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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct cas {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIF_STATUS_POLL_DATA ; 
 int /*<<< orphan*/  MIF_STATUS_POLL_STATUS ; 
 scalar_t__ REG_MIF_STATUS ; 
 int FUNC1 (struct cas*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct cas *cp,
			     u32 status)
{
	u32 stat = FUNC2(cp->regs + REG_MIF_STATUS);
	u16 bmsr;

	/* check for a link change */
	if (FUNC0(MIF_STATUS_POLL_STATUS, stat) == 0)
		return 0;

	bmsr = FUNC0(MIF_STATUS_POLL_DATA, stat);
	return FUNC1(cp, bmsr);
}