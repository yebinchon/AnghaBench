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
struct TYPE_2__ {struct dentry* debugfs_dentry; } ;
struct i2400m {int /*<<< orphan*/  trace_msg_from_user; int /*<<< orphan*/  state; int /*<<< orphan*/  tx_out; int /*<<< orphan*/  tx_in; struct dentry* debugfs_dentry; TYPE_1__ wimax_dev; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  debugfs ; 
 struct dentry* FUNC1 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct i2400m*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  driver ; 
 int /*<<< orphan*/  fops_i2400m_reset ; 
 int /*<<< orphan*/  fops_i2400m_suspend ; 
 int /*<<< orphan*/  fops_netdev_queue_stopped ; 
 int /*<<< orphan*/  fw ; 
 int /*<<< orphan*/  i2400m_rx_stats_fops ; 
 int /*<<< orphan*/  i2400m_tx_stats_fops ; 
 int /*<<< orphan*/  netdev ; 
 int /*<<< orphan*/  rfkill ; 
 int /*<<< orphan*/  rx ; 
 int /*<<< orphan*/  tx ; 

void FUNC6(struct i2400m *i2400m)
{
	struct dentry *dentry = i2400m->wimax_dev.debugfs_dentry;

	dentry = FUNC1("i2400m", dentry);
	i2400m->debugfs_dentry = dentry;

	FUNC0("dl_", control, dentry);
	FUNC0("dl_", driver, dentry);
	FUNC0("dl_", debugfs, dentry);
	FUNC0("dl_", fw, dentry);
	FUNC0("dl_", netdev, dentry);
	FUNC0("dl_", rfkill, dentry);
	FUNC0("dl_", rx, dentry);
	FUNC0("dl_", tx, dentry);

	FUNC3("tx_in", 0400, dentry, &i2400m->tx_in);
	FUNC3("tx_out", 0400, dentry, &i2400m->tx_out);
	FUNC4("state", 0600, dentry, &i2400m->state);

	/*
	 * Trace received messages from user space
	 *
	 * In order to tap the bidirectional message stream in the
	 * 'msg' pipe, user space can read from the 'msg' pipe;
	 * however, due to limitations in libnl, we can't know what
	 * the different applications are sending down to the kernel.
	 *
	 * So we have this hack where the driver will echo any message
	 * received on the msg pipe from user space [through a call to
	 * wimax_dev->op_msg_from_user() into
	 * i2400m_op_msg_from_user()] into the 'trace' pipe that this
	 * driver creates.
	 *
	 * So then, reading from both the 'trace' and 'msg' pipes in
	 * user space will provide a full dump of the traffic.
	 *
	 * Write 1 to activate, 0 to clear.
	 *
	 * It is not really very atomic, but it is also not too
	 * critical.
	 */
	FUNC5("trace_msg_from_user", 0600, dentry,
			  &i2400m->trace_msg_from_user);

	FUNC2("netdev_queue_stopped", 0400, dentry, i2400m,
			    &fops_netdev_queue_stopped);

	FUNC2("rx_stats", 0600, dentry, i2400m,
			    &i2400m_rx_stats_fops);

	FUNC2("tx_stats", 0600, dentry, i2400m,
			    &i2400m_tx_stats_fops);

	FUNC2("suspend", 0200, dentry, i2400m,
			    &fops_i2400m_suspend);

	FUNC2("reset", 0200, dentry, i2400m, &fops_i2400m_reset);
}