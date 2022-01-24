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
struct hl_dbg_device_entry {int /*<<< orphan*/  entry_arr; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  root; } ;
struct hl_device {struct hl_dbg_device_entry hl_debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct hl_device *hdev)
{
	struct hl_dbg_device_entry *entry = &hdev->hl_debugfs;

	FUNC0(entry->root);

	FUNC2(&entry->file_mutex);
	FUNC1(entry->entry_arr);
}