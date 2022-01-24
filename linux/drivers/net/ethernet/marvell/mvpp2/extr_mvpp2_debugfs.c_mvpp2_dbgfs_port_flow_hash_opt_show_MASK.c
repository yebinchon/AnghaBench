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
typedef  int /*<<< orphan*/  u16 ;
struct seq_file {struct mvpp2_dbgfs_port_flow_entry* private; } ;
struct mvpp2_port {int /*<<< orphan*/  priv; int /*<<< orphan*/  id; } ;
struct mvpp2_dbgfs_port_flow_entry {struct mvpp2_port* port; TYPE_1__* dbg_fe; } ;
struct mvpp2_cls_flow_entry {int dummy; } ;
struct mvpp2_cls_flow {int /*<<< orphan*/  flow_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  flow; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvpp2_cls_flow* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct mvpp2_cls_flow_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_cls_flow_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *unused)
{
	struct mvpp2_dbgfs_port_flow_entry *entry = s->private;
	struct mvpp2_port *port = entry->port;
	struct mvpp2_cls_flow_entry fe;
	const struct mvpp2_cls_flow *f;
	int flow_index;
	u16 hash_opts;

	f = FUNC1(entry->dbg_fe->flow);
	if (!f)
		return -EINVAL;

	flow_index = FUNC0(entry->port->id, f->flow_id);

	FUNC2(port->priv, flow_index, &fe);

	hash_opts = FUNC3(&fe);

	FUNC4(s, "0x%04x\n", hash_opts);

	return 0;
}