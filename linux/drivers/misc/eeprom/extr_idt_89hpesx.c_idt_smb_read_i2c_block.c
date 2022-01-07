
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct idt_smb_seq {int bytecnt; scalar_t__ ccode; int data; } ;
struct idt_89hpesx_dev {int client; } ;
typedef scalar_t__ s32 ;


 scalar_t__ CCODE_BLOCK ;
 scalar_t__ CCODE_END ;
 scalar_t__ CCODE_START ;
 int EINVAL ;
 int ENODATA ;
 int I2C_SMBUS_BLOCK_MAX ;
 scalar_t__ idt_smb_safe (int ,int ,scalar_t__,int,scalar_t__*) ;
 int memcpy (int ,scalar_t__*,scalar_t__) ;
 int read_i2c_block ;

__attribute__((used)) static int idt_smb_read_i2c_block(struct idt_89hpesx_dev *pdev,
      struct idt_smb_seq *seq)
{
 u8 ccode, buf[I2C_SMBUS_BLOCK_MAX + 1];
 s32 sts;


 if (seq->bytecnt > I2C_SMBUS_BLOCK_MAX)
  return -EINVAL;


 ccode = seq->ccode | CCODE_BLOCK | CCODE_START | CCODE_END;


 sts = idt_smb_safe(read_i2c_block, pdev->client, ccode,
  seq->bytecnt + 1, buf);
 if (sts != seq->bytecnt + 1)
  return (sts < 0 ? sts : -ENODATA);
 if (buf[0] != seq->bytecnt)
  return -ENODATA;


 memcpy(seq->data, &buf[1], seq->bytecnt);

 return 0;
}
