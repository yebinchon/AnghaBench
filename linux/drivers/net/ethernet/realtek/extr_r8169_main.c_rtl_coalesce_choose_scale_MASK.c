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
typedef  int u16 ;
struct rtl_coalesce_scale {int /*<<< orphan*/ * nsecs; } ;
struct rtl_coalesce_info {struct rtl_coalesce_scale const* scalev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct rtl_coalesce_scale const* FUNC0 (struct rtl_coalesce_info const*) ; 
 struct rtl_coalesce_scale const* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rtl_coalesce_info const*) ; 
 int RTL_COALESCE_T_MAX ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_coalesce_info* FUNC4 (struct net_device*) ; 

__attribute__((used)) static const struct rtl_coalesce_scale *FUNC5(
			struct net_device *dev, u32 nsec, u16 *cp01)
{
	const struct rtl_coalesce_info *ci;
	u16 i;

	ci = FUNC4(dev);
	if (FUNC2(ci))
		return FUNC0(ci);

	for (i = 0; i < 4; i++) {
		u32 rxtx_maxscale = FUNC3(ci->scalev[i].nsecs[0],
					ci->scalev[i].nsecs[1]);
		if (nsec <= rxtx_maxscale * RTL_COALESCE_T_MAX) {
			*cp01 = i;
			return &ci->scalev[i];
		}
	}

	return FUNC1(-EINVAL);
}