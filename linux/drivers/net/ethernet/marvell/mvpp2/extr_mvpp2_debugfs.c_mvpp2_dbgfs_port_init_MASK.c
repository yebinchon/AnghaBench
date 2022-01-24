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
struct mvpp2_port {TYPE_1__* dev; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct mvpp2_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mvpp2_dbgfs_filter_fops ; 
 int /*<<< orphan*/  mvpp2_dbgfs_port_parser_fops ; 
 int /*<<< orphan*/  mvpp2_dbgfs_port_vid_fops ; 

__attribute__((used)) static int FUNC2(struct dentry *parent,
				 struct mvpp2_port *port)
{
	struct dentry *port_dir;

	port_dir = FUNC0(port->dev->name, parent);

	FUNC1("parser_entries", 0444, port_dir, port,
			    &mvpp2_dbgfs_port_parser_fops);

	FUNC1("mac_filter", 0444, port_dir, port,
			    &mvpp2_dbgfs_filter_fops);

	FUNC1("vid_filter", 0444, port_dir, port,
			    &mvpp2_dbgfs_port_vid_fops);

	return 0;
}