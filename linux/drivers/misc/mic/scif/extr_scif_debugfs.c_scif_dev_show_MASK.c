#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_5__ {char* node; } ;
struct TYPE_4__ {int maxid; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  total; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 TYPE_2__* scif_dev ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *unused)
{
	int node;

	FUNC1(s, "Total Nodes %d Self Node Id %d Maxid %d\n",
		   scif_info.total, scif_info.nodeid,
		   scif_info.maxid);

	if (!scif_dev)
		return 0;

	FUNC1(s, "%-16s\t%-16s\n", "node_id", "state");

	for (node = 0; node <= scif_info.maxid; node++)
		FUNC1(s, "%-16d\t%-16s\n", scif_dev[node].node,
			   FUNC0(&scif_dev[node]) ?
			   "Running" : "Offline");
	return 0;
}