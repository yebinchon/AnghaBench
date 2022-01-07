
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt_89hpesx_dev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ IS_ERR (struct idt_89hpesx_dev*) ;
 int PTR_ERR (struct idt_89hpesx_dev*) ;
 int idt_check_dev (struct idt_89hpesx_dev*) ;
 int idt_create_dbgfs_files (struct idt_89hpesx_dev*) ;
 struct idt_89hpesx_dev* idt_create_pdev (struct i2c_client*) ;
 int idt_create_sysfs_files (struct idt_89hpesx_dev*) ;
 int idt_free_pdev (struct idt_89hpesx_dev*) ;
 int idt_set_smbus_ops (struct idt_89hpesx_dev*) ;

__attribute__((used)) static int idt_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct idt_89hpesx_dev *pdev;
 int ret;


 pdev = idt_create_pdev(client);
 if (IS_ERR(pdev))
  return PTR_ERR(pdev);


 ret = idt_set_smbus_ops(pdev);
 if (ret != 0)
  goto err_free_pdev;


 ret = idt_check_dev(pdev);
 if (ret != 0)
  goto err_free_pdev;


 ret = idt_create_sysfs_files(pdev);
 if (ret != 0)
  goto err_free_pdev;


 idt_create_dbgfs_files(pdev);

 return 0;

err_free_pdev:
 idt_free_pdev(pdev);

 return ret;
}
