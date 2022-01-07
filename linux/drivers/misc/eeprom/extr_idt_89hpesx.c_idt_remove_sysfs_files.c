
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idt_89hpesx_dev {scalar_t__ eesize; int ee_file; TYPE_1__* client; } ;
struct device {int kobj; } ;
struct TYPE_2__ {struct device dev; } ;


 int sysfs_remove_bin_file (int *,int ) ;

__attribute__((used)) static void idt_remove_sysfs_files(struct idt_89hpesx_dev *pdev)
{
 struct device *dev = &pdev->client->dev;


 if (pdev->eesize == 0)
  return;


 sysfs_remove_bin_file(&dev->kobj, pdev->ee_file);
}
