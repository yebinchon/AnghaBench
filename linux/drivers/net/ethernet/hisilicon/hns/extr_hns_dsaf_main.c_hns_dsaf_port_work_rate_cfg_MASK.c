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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct dsaf_device {int dummy; } ;
typedef  enum dsaf_port_rate_mode { ____Placeholder_dsaf_port_rate_mode } dsaf_port_rate_mode ;

/* Variables and functions */
 int DSAF_PORT_RATE_10000 ; 
 scalar_t__ DSAF_XGE_GE_WORK_MODE_0_REG ; 
 int /*<<< orphan*/  DSAF_XGE_GE_WORK_MODE_S ; 
 int /*<<< orphan*/  FUNC0 (struct dsaf_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsaf_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dsaf_device*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct dsaf_device *dsaf_dev, int mac_id,
			    enum dsaf_port_rate_mode rate_mode)
{
	u32 port_work_mode;

	port_work_mode = FUNC0(
		dsaf_dev, DSAF_XGE_GE_WORK_MODE_0_REG + 0x4 * (u64)mac_id);

	if (rate_mode == DSAF_PORT_RATE_10000)
		FUNC1(port_work_mode, DSAF_XGE_GE_WORK_MODE_S, 1);
	else
		FUNC1(port_work_mode, DSAF_XGE_GE_WORK_MODE_S, 0);

	FUNC2(dsaf_dev,
		       DSAF_XGE_GE_WORK_MODE_0_REG + 0x4 * (u64)mac_id,
		       port_work_mode);

	FUNC3(dsaf_dev, mac_id, rate_mode);
}