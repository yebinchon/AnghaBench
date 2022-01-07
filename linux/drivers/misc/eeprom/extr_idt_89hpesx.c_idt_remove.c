
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt_89hpesx_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct idt_89hpesx_dev* i2c_get_clientdata (struct i2c_client*) ;
 int idt_free_pdev (struct idt_89hpesx_dev*) ;
 int idt_remove_dbgfs_files (struct idt_89hpesx_dev*) ;
 int idt_remove_sysfs_files (struct idt_89hpesx_dev*) ;

__attribute__((used)) static int idt_remove(struct i2c_client *client)
{
 struct idt_89hpesx_dev *pdev = i2c_get_clientdata(client);


 idt_remove_dbgfs_files(pdev);


 idt_remove_sysfs_files(pdev);


 idt_free_pdev(pdev);

 return 0;
}
