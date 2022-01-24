#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hl_debugfs_entry {struct hl_debugfs_entry* dev_entry; TYPE_1__* info_ent; struct dentry* dent; int /*<<< orphan*/  root; struct hl_debugfs_entry* entry_arr; int /*<<< orphan*/  i2c_reg; int /*<<< orphan*/  i2c_addr; int /*<<< orphan*/  i2c_bus; int /*<<< orphan*/  addr; int /*<<< orphan*/  ctx_mem_hash_spinlock; int /*<<< orphan*/  userptr_spinlock; int /*<<< orphan*/  cs_job_spinlock; int /*<<< orphan*/  cs_spinlock; int /*<<< orphan*/  cb_spinlock; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  ctx_mem_hash_list; int /*<<< orphan*/  userptr_list; int /*<<< orphan*/  cs_job_list; int /*<<< orphan*/  cs_list; int /*<<< orphan*/  cb_list; int /*<<< orphan*/  file_list; struct hl_device* hdev; } ;
struct hl_device {int /*<<< orphan*/  dev; struct hl_debugfs_entry hl_debugfs; } ;
struct hl_dbg_device_entry {struct hl_dbg_device_entry* dev_entry; TYPE_1__* info_ent; struct dentry* dent; int /*<<< orphan*/  root; struct hl_dbg_device_entry* entry_arr; int /*<<< orphan*/  i2c_reg; int /*<<< orphan*/  i2c_addr; int /*<<< orphan*/  i2c_bus; int /*<<< orphan*/  addr; int /*<<< orphan*/  ctx_mem_hash_spinlock; int /*<<< orphan*/  userptr_spinlock; int /*<<< orphan*/  cs_job_spinlock; int /*<<< orphan*/  cs_spinlock; int /*<<< orphan*/  cb_spinlock; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  ctx_mem_hash_list; int /*<<< orphan*/  userptr_list; int /*<<< orphan*/  cs_job_list; int /*<<< orphan*/  cs_list; int /*<<< orphan*/  cb_list; int /*<<< orphan*/  file_list; struct hl_device* hdev; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC3 (char*,int,int /*<<< orphan*/ ,struct hl_debugfs_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hl_data32b_fops ; 
 int /*<<< orphan*/  hl_debug_root ; 
 int /*<<< orphan*/  hl_debugfs_fops ; 
 TYPE_1__* hl_debugfs_list ; 
 int /*<<< orphan*/  hl_device_fops ; 
 int /*<<< orphan*/  hl_i2c_data_fops ; 
 int /*<<< orphan*/  hl_led0_fops ; 
 int /*<<< orphan*/  hl_led1_fops ; 
 int /*<<< orphan*/  hl_led2_fops ; 
 int /*<<< orphan*/  hl_power_fops ; 
 struct hl_debugfs_entry* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct hl_device *hdev)
{
	struct hl_dbg_device_entry *dev_entry = &hdev->hl_debugfs;
	int count = FUNC0(hl_debugfs_list);
	struct hl_debugfs_entry *entry;
	struct dentry *ent;
	int i;

	dev_entry->hdev = hdev;
	dev_entry->entry_arr = FUNC7(count,
					sizeof(struct hl_debugfs_entry),
					GFP_KERNEL);
	if (!dev_entry->entry_arr)
		return;

	FUNC1(&dev_entry->file_list);
	FUNC1(&dev_entry->cb_list);
	FUNC1(&dev_entry->cs_list);
	FUNC1(&dev_entry->cs_job_list);
	FUNC1(&dev_entry->userptr_list);
	FUNC1(&dev_entry->ctx_mem_hash_list);
	FUNC8(&dev_entry->file_mutex);
	FUNC9(&dev_entry->cb_spinlock);
	FUNC9(&dev_entry->cs_spinlock);
	FUNC9(&dev_entry->cs_job_spinlock);
	FUNC9(&dev_entry->userptr_spinlock);
	FUNC9(&dev_entry->ctx_mem_hash_spinlock);

	dev_entry->root = FUNC2(FUNC6(hdev->dev),
						hl_debug_root);

	FUNC5("addr",
				0644,
				dev_entry->root,
				&dev_entry->addr);

	FUNC3("data32",
				0644,
				dev_entry->root,
				dev_entry,
				&hl_data32b_fops);

	FUNC3("set_power_state",
				0200,
				dev_entry->root,
				dev_entry,
				&hl_power_fops);

	FUNC4("i2c_bus",
				0644,
				dev_entry->root,
				&dev_entry->i2c_bus);

	FUNC4("i2c_addr",
				0644,
				dev_entry->root,
				&dev_entry->i2c_addr);

	FUNC4("i2c_reg",
				0644,
				dev_entry->root,
				&dev_entry->i2c_reg);

	FUNC3("i2c_data",
				0644,
				dev_entry->root,
				dev_entry,
				&hl_i2c_data_fops);

	FUNC3("led0",
				0200,
				dev_entry->root,
				dev_entry,
				&hl_led0_fops);

	FUNC3("led1",
				0200,
				dev_entry->root,
				dev_entry,
				&hl_led1_fops);

	FUNC3("led2",
				0200,
				dev_entry->root,
				dev_entry,
				&hl_led2_fops);

	FUNC3("device",
				0200,
				dev_entry->root,
				dev_entry,
				&hl_device_fops);

	for (i = 0, entry = dev_entry->entry_arr ; i < count ; i++, entry++) {

		ent = FUNC3(hl_debugfs_list[i].name,
					0444,
					dev_entry->root,
					entry,
					&hl_debugfs_fops);
		entry->dent = ent;
		entry->info_ent = &hl_debugfs_list[i];
		entry->dev_entry = dev_entry;
	}
}