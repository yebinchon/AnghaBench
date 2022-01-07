
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct kobject {int dummy; } ;
struct idt_89hpesx_dev {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 struct idt_89hpesx_dev* dev_get_drvdata (int ) ;
 int idt_eeprom_read (struct idt_89hpesx_dev*,int ,int ,int *) ;
 int kobj_to_dev (struct kobject*) ;

__attribute__((used)) static ssize_t eeprom_read(struct file *filp, struct kobject *kobj,
      struct bin_attribute *attr,
      char *buf, loff_t off, size_t count)
{
 struct idt_89hpesx_dev *pdev;
 int ret;


 pdev = dev_get_drvdata(kobj_to_dev(kobj));


 ret = idt_eeprom_read(pdev, (u16)off, (u16)count, (u8 *)buf);
 return (ret != 0 ? ret : count);
}
