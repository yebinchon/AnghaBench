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
struct hnae3_handle {int /*<<< orphan*/  hnae3_dbgfs; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct hnae3_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hns3_dbg_cmd_fops ; 
 int /*<<< orphan*/  hns3_dbgfs_root ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct hnae3_handle *handle)
{
	const char *name = FUNC2(handle->pdev);

	handle->hnae3_dbgfs = FUNC0(name, hns3_dbgfs_root);

	FUNC1("cmd", 0600, handle->hnae3_dbgfs, handle,
			    &hns3_dbg_cmd_fops);
}