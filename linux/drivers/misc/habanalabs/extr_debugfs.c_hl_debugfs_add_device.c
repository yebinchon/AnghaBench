
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hl_debugfs_entry {struct hl_debugfs_entry* dev_entry; TYPE_1__* info_ent; struct dentry* dent; int root; struct hl_debugfs_entry* entry_arr; int i2c_reg; int i2c_addr; int i2c_bus; int addr; int ctx_mem_hash_spinlock; int userptr_spinlock; int cs_job_spinlock; int cs_spinlock; int cb_spinlock; int file_mutex; int ctx_mem_hash_list; int userptr_list; int cs_job_list; int cs_list; int cb_list; int file_list; struct hl_device* hdev; } ;
struct hl_device {int dev; struct hl_debugfs_entry hl_debugfs; } ;
struct hl_dbg_device_entry {struct hl_dbg_device_entry* dev_entry; TYPE_1__* info_ent; struct dentry* dent; int root; struct hl_dbg_device_entry* entry_arr; int i2c_reg; int i2c_addr; int i2c_bus; int addr; int ctx_mem_hash_spinlock; int userptr_spinlock; int cs_job_spinlock; int cs_spinlock; int cb_spinlock; int file_mutex; int ctx_mem_hash_list; int userptr_list; int cs_job_list; int cs_list; int cb_list; int file_list; struct hl_device* hdev; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int debugfs_create_dir (int ,int ) ;
 struct dentry* debugfs_create_file (char*,int,int ,struct hl_debugfs_entry*,int *) ;
 int debugfs_create_u8 (char*,int,int ,int *) ;
 int debugfs_create_x64 (char*,int,int ,int *) ;
 int dev_name (int ) ;
 int hl_data32b_fops ;
 int hl_debug_root ;
 int hl_debugfs_fops ;
 TYPE_1__* hl_debugfs_list ;
 int hl_device_fops ;
 int hl_i2c_data_fops ;
 int hl_led0_fops ;
 int hl_led1_fops ;
 int hl_led2_fops ;
 int hl_power_fops ;
 struct hl_debugfs_entry* kmalloc_array (int,int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void hl_debugfs_add_device(struct hl_device *hdev)
{
 struct hl_dbg_device_entry *dev_entry = &hdev->hl_debugfs;
 int count = ARRAY_SIZE(hl_debugfs_list);
 struct hl_debugfs_entry *entry;
 struct dentry *ent;
 int i;

 dev_entry->hdev = hdev;
 dev_entry->entry_arr = kmalloc_array(count,
     sizeof(struct hl_debugfs_entry),
     GFP_KERNEL);
 if (!dev_entry->entry_arr)
  return;

 INIT_LIST_HEAD(&dev_entry->file_list);
 INIT_LIST_HEAD(&dev_entry->cb_list);
 INIT_LIST_HEAD(&dev_entry->cs_list);
 INIT_LIST_HEAD(&dev_entry->cs_job_list);
 INIT_LIST_HEAD(&dev_entry->userptr_list);
 INIT_LIST_HEAD(&dev_entry->ctx_mem_hash_list);
 mutex_init(&dev_entry->file_mutex);
 spin_lock_init(&dev_entry->cb_spinlock);
 spin_lock_init(&dev_entry->cs_spinlock);
 spin_lock_init(&dev_entry->cs_job_spinlock);
 spin_lock_init(&dev_entry->userptr_spinlock);
 spin_lock_init(&dev_entry->ctx_mem_hash_spinlock);

 dev_entry->root = debugfs_create_dir(dev_name(hdev->dev),
      hl_debug_root);

 debugfs_create_x64("addr",
    0644,
    dev_entry->root,
    &dev_entry->addr);

 debugfs_create_file("data32",
    0644,
    dev_entry->root,
    dev_entry,
    &hl_data32b_fops);

 debugfs_create_file("set_power_state",
    0200,
    dev_entry->root,
    dev_entry,
    &hl_power_fops);

 debugfs_create_u8("i2c_bus",
    0644,
    dev_entry->root,
    &dev_entry->i2c_bus);

 debugfs_create_u8("i2c_addr",
    0644,
    dev_entry->root,
    &dev_entry->i2c_addr);

 debugfs_create_u8("i2c_reg",
    0644,
    dev_entry->root,
    &dev_entry->i2c_reg);

 debugfs_create_file("i2c_data",
    0644,
    dev_entry->root,
    dev_entry,
    &hl_i2c_data_fops);

 debugfs_create_file("led0",
    0200,
    dev_entry->root,
    dev_entry,
    &hl_led0_fops);

 debugfs_create_file("led1",
    0200,
    dev_entry->root,
    dev_entry,
    &hl_led1_fops);

 debugfs_create_file("led2",
    0200,
    dev_entry->root,
    dev_entry,
    &hl_led2_fops);

 debugfs_create_file("device",
    0200,
    dev_entry->root,
    dev_entry,
    &hl_device_fops);

 for (i = 0, entry = dev_entry->entry_arr ; i < count ; i++, entry++) {

  ent = debugfs_create_file(hl_debugfs_list[i].name,
     0444,
     dev_entry->root,
     entry,
     &hl_debugfs_fops);
  entry->dent = ent;
  entry->info_ent = &hl_debugfs_list[i];
  entry->dev_entry = dev_entry;
 }
}
