
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct hl_debugfs_entry* private; } ;
struct hl_device {TYPE_1__* asic_funcs; } ;
struct hl_debugfs_entry {struct hl_dbg_device_entry* dev_entry; } ;
struct hl_dbg_device_entry {struct hl_device* hdev; } ;
struct TYPE_2__ {int (* is_device_idle ) (struct hl_device*,int *,struct seq_file*) ;} ;


 int stub1 (struct hl_device*,int *,struct seq_file*) ;

__attribute__((used)) static int engines_show(struct seq_file *s, void *data)
{
 struct hl_debugfs_entry *entry = s->private;
 struct hl_dbg_device_entry *dev_entry = entry->dev_entry;
 struct hl_device *hdev = dev_entry->hdev;

 hdev->asic_funcs->is_device_idle(hdev, ((void*)0), s);

 return 0;
}
