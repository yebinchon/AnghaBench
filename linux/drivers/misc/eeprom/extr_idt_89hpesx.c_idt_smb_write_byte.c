
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct idt_smb_seq {int bytecnt; int ccode; int * data; } ;
struct idt_89hpesx_dev {int client; } ;
typedef scalar_t__ s32 ;


 int CCODE_BYTE ;
 int CCODE_END ;
 int CCODE_START ;
 scalar_t__ idt_smb_safe (int ,int ,int,int ) ;
 int write_byte ;

__attribute__((used)) static int idt_smb_write_byte(struct idt_89hpesx_dev *pdev,
         const struct idt_smb_seq *seq)
{
 s32 sts;
 u8 ccode;
 int idx;


 for (idx = 0; idx < seq->bytecnt; idx++) {

  ccode = seq->ccode | CCODE_BYTE;
  if (idx == 0)
   ccode |= CCODE_START;
  if (idx == seq->bytecnt - 1)
   ccode |= CCODE_END;


  sts = idt_smb_safe(write_byte, pdev->client, ccode,
   seq->data[idx]);
  if (sts != 0)
   return (int)sts;
 }

 return 0;
}
