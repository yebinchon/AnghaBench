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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u64 ;
struct ksz_port_mib {int /*<<< orphan*/  cnt_mutex; int /*<<< orphan*/  counters; int /*<<< orphan*/  cnt_ptr; } ;
struct ksz_device {int mib_cnt; int /*<<< orphan*/  reg_mib_cnt; TYPE_1__* ports; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct dsa_port {int /*<<< orphan*/  slave; } ;
struct TYPE_2__ {struct ksz_port_mib mib; } ;

/* Variables and functions */
 struct dsa_port* FUNC0 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_device*,int) ; 

void FUNC6(struct dsa_switch *ds, int port, uint64_t *buf)
{
	const struct dsa_port *dp = FUNC0(ds, port);
	struct ksz_device *dev = ds->priv;
	struct ksz_port_mib *mib;

	mib = &dev->ports[port].mib;
	FUNC2(&mib->cnt_mutex);

	/* Only read dropped counters if no link. */
	if (!FUNC4(dp->slave))
		mib->cnt_ptr = dev->reg_mib_cnt;
	FUNC5(dev, port);
	FUNC1(buf, mib->counters, dev->mib_cnt * sizeof(u64));
	FUNC3(&mib->cnt_mutex);
}