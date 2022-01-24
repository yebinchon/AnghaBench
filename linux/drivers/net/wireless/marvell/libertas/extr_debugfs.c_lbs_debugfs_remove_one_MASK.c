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
struct lbs_private {int /*<<< orphan*/  debugfs_dir; int /*<<< orphan*/ * debugfs_files; int /*<<< orphan*/  debugfs_debug; int /*<<< orphan*/  events_dir; int /*<<< orphan*/ * debugfs_events_files; int /*<<< orphan*/  regs_dir; int /*<<< orphan*/ * debugfs_regs_files; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debugfs_events_files ; 
 int /*<<< orphan*/  debugfs_files ; 
 int /*<<< orphan*/  debugfs_regs_files ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct lbs_private *priv)
{
	int i;

	for(i=0; i<FUNC0(debugfs_regs_files); i++)
		FUNC1(priv->debugfs_regs_files[i]);

	FUNC1(priv->regs_dir);

	for(i=0; i<FUNC0(debugfs_events_files); i++)
		FUNC1(priv->debugfs_events_files[i]);

	FUNC1(priv->events_dir);
#ifdef PROC_DEBUG
	debugfs_remove(priv->debugfs_debug);
#endif
	for(i=0; i<FUNC0(debugfs_files); i++)
		FUNC1(priv->debugfs_files[i]);
	FUNC1(priv->debugfs_dir);
}