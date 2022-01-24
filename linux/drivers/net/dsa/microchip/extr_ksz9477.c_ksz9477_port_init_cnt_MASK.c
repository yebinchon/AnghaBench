#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct ksz_port_mib {int /*<<< orphan*/  counters; scalar_t__ cnt_ptr; int /*<<< orphan*/  cnt_mutex; } ;
struct ksz_device {int mib_cnt; TYPE_1__* ports; } ;
struct TYPE_2__ {struct ksz_port_mib mib; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIB_COUNTER_FLUSH_FREEZE ; 
 int /*<<< orphan*/  REG_PORT_MIB_CTRL_STAT__4 ; 
 int /*<<< orphan*/  REG_SW_MAC_CTRL_6 ; 
 int /*<<< orphan*/  SW_MIB_COUNTER_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ksz_device *dev, int port)
{
	struct ksz_port_mib *mib = &dev->ports[port].mib;

	/* flush all enabled port MIB counters */
	FUNC3(&mib->cnt_mutex);
	FUNC0(dev, port, REG_PORT_MIB_CTRL_STAT__4,
		     MIB_COUNTER_FLUSH_FREEZE);
	FUNC1(dev, REG_SW_MAC_CTRL_6, SW_MIB_COUNTER_FLUSH);
	FUNC0(dev, port, REG_PORT_MIB_CTRL_STAT__4, 0);
	FUNC4(&mib->cnt_mutex);

	mib->cnt_ptr = 0;
	FUNC2(mib->counters, 0, dev->mib_cnt * sizeof(u64));
}