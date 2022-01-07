
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt_89hpesx_dev {scalar_t__ iniccode; int csr; int inicsrcmd; struct i2c_client* client; } ;
struct i2c_client {int flags; int adapter; int dev; } ;


 scalar_t__ CCODE_PEC ;
 int CSR_DEF ;
 int CSR_DWE ;
 int ENOMEM ;
 struct idt_89hpesx_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int I2C_CLIENT_PEC ;
 int I2C_FUNC_SMBUS_PEC ;
 struct idt_89hpesx_dev* devm_kmalloc (int *,int,int ) ;
 scalar_t__ i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct idt_89hpesx_dev*) ;
 int idt_get_fw_data (struct idt_89hpesx_dev*) ;

__attribute__((used)) static struct idt_89hpesx_dev *idt_create_pdev(struct i2c_client *client)
{
 struct idt_89hpesx_dev *pdev;


 pdev = devm_kmalloc(&client->dev, sizeof(struct idt_89hpesx_dev),
  GFP_KERNEL);
 if (pdev == ((void*)0))
  return ERR_PTR(-ENOMEM);


 pdev->client = client;
 i2c_set_clientdata(client, pdev);


 idt_get_fw_data(pdev);


 pdev->inicsrcmd = CSR_DWE;
 pdev->csr = CSR_DEF;


 if (i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_PEC)) {
  pdev->iniccode = CCODE_PEC;
  client->flags |= I2C_CLIENT_PEC;
 } else {
  pdev->iniccode = 0;
 }

 return pdev;
}
