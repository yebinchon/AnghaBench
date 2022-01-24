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
struct TYPE_2__ {int /*<<< orphan*/  wk; } ;
struct iwl_fw_runtime {TYPE_1__ timestamp; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iwl_fw_timestamp_marker_wk ; 
 int /*<<< orphan*/  send_hcmd ; 
 int /*<<< orphan*/  timestamp_marker ; 

void FUNC2(struct iwl_fw_runtime *fwrt,
			    struct dentry *dbgfs_dir)
{
	FUNC1(&fwrt->timestamp.wk, iwl_fw_timestamp_marker_wk);
	FUNC0(timestamp_marker, dbgfs_dir, 0200);
	FUNC0(send_hcmd, dbgfs_dir, 0200);
}