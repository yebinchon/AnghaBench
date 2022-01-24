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
struct map_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPP_PORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l440gx_vpp_lock ; 
 int l440gx_vpp_refcnt ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct map_info *map, int vpp)
{
	unsigned long flags;

	FUNC2(&l440gx_vpp_lock, flags);
	if (vpp) {
		if (++l440gx_vpp_refcnt == 1)   /* first nested 'on' */
			FUNC1(FUNC0(VPP_PORT) | 1, VPP_PORT);
	} else {
		if (--l440gx_vpp_refcnt == 0)   /* last nested 'off' */
			FUNC1(FUNC0(VPP_PORT) & ~1, VPP_PORT);
	}
	FUNC3(&l440gx_vpp_lock, flags);
}