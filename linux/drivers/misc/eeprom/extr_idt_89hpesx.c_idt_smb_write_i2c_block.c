
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct idt_smb_seq {int bytecnt; int ccode; int data; } ;
struct idt_89hpesx_dev {int client; } ;


 int CCODE_BLOCK ;
 int CCODE_END ;
 int CCODE_START ;
 int EINVAL ;
 int I2C_SMBUS_BLOCK_MAX ;
 int idt_smb_safe (int ,int ,int,int,int*) ;
 int memcpy (int*,int ,int) ;
 int write_i2c_block ;

__attribute__((used)) static int idt_smb_write_i2c_block(struct idt_89hpesx_dev *pdev,
       const struct idt_smb_seq *seq)
{
 u8 ccode, buf[I2C_SMBUS_BLOCK_MAX + 1];


 if (seq->bytecnt > I2C_SMBUS_BLOCK_MAX)
  return -EINVAL;


 buf[0] = seq->bytecnt;
 memcpy(&buf[1], seq->data, seq->bytecnt);


 ccode = seq->ccode | CCODE_BLOCK | CCODE_START | CCODE_END;


 return idt_smb_safe(write_i2c_block, pdev->client, ccode,
  seq->bytecnt + 1, buf);
}
