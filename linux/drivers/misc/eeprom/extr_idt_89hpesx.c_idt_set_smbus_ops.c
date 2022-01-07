
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idt_89hpesx_dev {int smb_mtx; int smb_write; int smb_read; TYPE_1__* client; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; struct i2c_adapter* adapter; } ;


 int EPFNOSUPPORT ;
 int I2C_FUNC_SMBUS_READ_BLOCK_DATA ;
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BLOCK_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WRITE_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_WRITE_WORD_DATA ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ i2c_check_functionality (struct i2c_adapter*,int ) ;
 int idt_smb_read_block ;
 int idt_smb_read_byte ;
 int idt_smb_read_i2c_block ;
 int idt_smb_read_word ;
 int idt_smb_write_block ;
 int idt_smb_write_byte ;
 int idt_smb_write_i2c_block ;
 int idt_smb_write_word ;
 int mutex_init (int *) ;

__attribute__((used)) static int idt_set_smbus_ops(struct idt_89hpesx_dev *pdev)
{
 struct i2c_adapter *adapter = pdev->client->adapter;
 struct device *dev = &pdev->client->dev;


 if (i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_READ_BLOCK_DATA)) {
  pdev->smb_read = idt_smb_read_block;
  dev_dbg(dev, "SMBus block-read op chosen");
 } else if (i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
  pdev->smb_read = idt_smb_read_i2c_block;
  dev_dbg(dev, "SMBus i2c-block-read op chosen");
 } else if (i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_READ_WORD_DATA) &&
     i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_READ_BYTE_DATA)) {
  pdev->smb_read = idt_smb_read_word;
  dev_warn(dev, "Use slow word/byte SMBus read ops");
 } else if (i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_READ_BYTE_DATA)) {
  pdev->smb_read = idt_smb_read_byte;
  dev_warn(dev, "Use slow byte SMBus read op");
 } else {
  dev_err(dev, "No supported SMBus read op");
  return -EPFNOSUPPORT;
 }


 if (i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_WRITE_BLOCK_DATA)) {
  pdev->smb_write = idt_smb_write_block;
  dev_dbg(dev, "SMBus block-write op chosen");
 } else if (i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_WRITE_I2C_BLOCK)) {
  pdev->smb_write = idt_smb_write_i2c_block;
  dev_dbg(dev, "SMBus i2c-block-write op chosen");
 } else if (i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_WRITE_WORD_DATA) &&
     i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_WRITE_BYTE_DATA)) {
  pdev->smb_write = idt_smb_write_word;
  dev_warn(dev, "Use slow word/byte SMBus write op");
 } else if (i2c_check_functionality(adapter,
        I2C_FUNC_SMBUS_WRITE_BYTE_DATA)) {
  pdev->smb_write = idt_smb_write_byte;
  dev_warn(dev, "Use slow byte SMBus write op");
 } else {
  dev_err(dev, "No supported SMBus write op");
  return -EPFNOSUPPORT;
 }


 mutex_init(&pdev->smb_mtx);

 return 0;
}
