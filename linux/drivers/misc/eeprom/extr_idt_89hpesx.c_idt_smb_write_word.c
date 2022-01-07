
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct idt_smb_seq {int bytecnt; int ccode; int * data; } ;
struct idt_89hpesx_dev {int client; } ;
typedef scalar_t__ s32 ;


 int CCODE_BYTE ;
 int CCODE_END ;
 int CCODE_START ;
 int CCODE_WORD ;
 scalar_t__ idt_smb_safe (int ,int ,int,int ) ;
 int write_byte ;
 int write_word ;

__attribute__((used)) static int idt_smb_write_word(struct idt_89hpesx_dev *pdev,
         const struct idt_smb_seq *seq)
{
 s32 sts;
 u8 ccode;
 int idx, evencnt;


 evencnt = seq->bytecnt - (seq->bytecnt % 2);


 for (idx = 0; idx < evencnt; idx += 2) {

  ccode = seq->ccode | CCODE_WORD;
  if (idx == 0)
   ccode |= CCODE_START;
  if (idx == evencnt - 2)
   ccode |= CCODE_END;


  sts = idt_smb_safe(write_word, pdev->client, ccode,
   *(u16 *)&seq->data[idx]);
  if (sts != 0)
   return (int)sts;
 }


 if (seq->bytecnt != evencnt) {

  ccode = seq->ccode | CCODE_BYTE | CCODE_END;
  if (idx == 0)
   ccode |= CCODE_START;


  sts = idt_smb_safe(write_byte, pdev->client, ccode,
   seq->data[idx]);
  if (sts != 0)
   return (int)sts;
 }

 return 0;
}
