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
struct mvpp2_dbgfs_flow_entry {int flow; struct mvpp2* priv; } ;
struct mvpp2 {int port_count; int /*<<< orphan*/ * port_list; TYPE_1__* dbgfs_entries; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct mvpp2_dbgfs_flow_entry* flow_entries; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct mvpp2_dbgfs_flow_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mvpp2_dbgfs_flow_dec_hits_fops ; 
 int /*<<< orphan*/  mvpp2_dbgfs_flow_id_fops ; 
 int FUNC2 (struct dentry*,int /*<<< orphan*/ ,struct mvpp2_dbgfs_flow_entry*) ; 
 int /*<<< orphan*/  mvpp2_dbgfs_flow_type_fops ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct dentry *parent,
				       struct mvpp2 *priv, int flow)
{
	struct mvpp2_dbgfs_flow_entry *entry;
	struct dentry *flow_entry_dir;
	char flow_entry_name[10];
	int i, ret;

	FUNC3(flow_entry_name, "%02d", flow);

	flow_entry_dir = FUNC0(flow_entry_name, parent);

	entry = &priv->dbgfs_entries->flow_entries[flow];

	entry->flow = flow;
	entry->priv = priv;

	FUNC1("dec_hits", 0444, flow_entry_dir, entry,
			    &mvpp2_dbgfs_flow_dec_hits_fops);

	FUNC1("type", 0444, flow_entry_dir, entry,
			    &mvpp2_dbgfs_flow_type_fops);

	FUNC1("id", 0444, flow_entry_dir, entry,
			    &mvpp2_dbgfs_flow_id_fops);

	/* Create entry for each port */
	for (i = 0; i < priv->port_count; i++) {
		ret = FUNC2(flow_entry_dir,
						 priv->port_list[i], entry);
		if (ret)
			return ret;
	}

	return 0;
}