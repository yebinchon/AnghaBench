
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct idt_smb_seq {scalar_t__ bytecnt; int ccode; int data; } ;
struct idt_89hpesx_dev {int client; } ;
typedef scalar_t__ s32 ;


 int CCODE_BLOCK ;
 int CCODE_END ;
 int CCODE_START ;
 int EINVAL ;
 int ENODATA ;
 scalar_t__ I2C_SMBUS_BLOCK_MAX ;
 scalar_t__ idt_smb_safe (int ,int ,int,int ) ;
 int read_block ;

__attribute__((used)) static int idt_smb_read_block(struct idt_89hpesx_dev *pdev,
         struct idt_smb_seq *seq)
{
 s32 sts;
 u8 ccode;


 if (seq->bytecnt > I2C_SMBUS_BLOCK_MAX)
  return -EINVAL;


 ccode = seq->ccode | CCODE_BLOCK | CCODE_START | CCODE_END;


 sts = idt_smb_safe(read_block, pdev->client, ccode, seq->data);
 if (sts != seq->bytecnt)
  return (sts < 0 ? sts : -ENODATA);

 return 0;
}
