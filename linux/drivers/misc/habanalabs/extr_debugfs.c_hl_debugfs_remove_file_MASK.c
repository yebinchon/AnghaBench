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
struct hl_fpriv {int /*<<< orphan*/  debugfs_list; TYPE_1__* hdev; } ;
struct hl_dbg_device_entry {int /*<<< orphan*/  file_mutex; } ;
struct TYPE_2__ {struct hl_dbg_device_entry hl_debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct hl_fpriv *hpriv)
{
	struct hl_dbg_device_entry *dev_entry = &hpriv->hdev->hl_debugfs;

	FUNC1(&dev_entry->file_mutex);
	FUNC0(&hpriv->debugfs_list);
	FUNC2(&dev_entry->file_mutex);
}