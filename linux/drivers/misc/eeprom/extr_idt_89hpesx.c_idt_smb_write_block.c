
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct idt_smb_seq {int ccode; int data; int bytecnt; } ;
struct idt_89hpesx_dev {int client; } ;


 int CCODE_BLOCK ;
 int CCODE_END ;
 int CCODE_START ;
 int EINVAL ;
 int I2C_SMBUS_BLOCK_MAX ;
 int idt_smb_safe (int ,int ,int,int ,int ) ;
 int write_block ;

__attribute__((used)) static int idt_smb_write_block(struct idt_89hpesx_dev *pdev,
          const struct idt_smb_seq *seq)
{
 u8 ccode;


 if (seq->bytecnt > I2C_SMBUS_BLOCK_MAX)
  return -EINVAL;


 ccode = seq->ccode | CCODE_BLOCK | CCODE_START | CCODE_END;


 return idt_smb_safe(write_block, pdev->client, ccode, seq->bytecnt,
  seq->data);
}
