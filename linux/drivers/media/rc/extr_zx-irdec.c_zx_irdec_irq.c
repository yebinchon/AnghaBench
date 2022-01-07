
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zx_irdec {int rcd; scalar_t__ base; } ;
typedef int irqreturn_t ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int IRQ_HANDLED ;
 scalar_t__ ZX_IR_CNUM ;
 scalar_t__ ZX_IR_CODE ;
 scalar_t__ ZX_IR_INTSTCLR ;
 int ZX_NECRPT ;
 int ir_nec_bytes_to_scancode (int,int,int,int,int*) ;
 int rc_keydown (int ,int,int,int ) ;
 int rc_repeat (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t zx_irdec_irq(int irq, void *dev_id)
{
 struct zx_irdec *irdec = dev_id;
 u8 address, not_address;
 u8 command, not_command;
 u32 rawcode, scancode;
 enum rc_proto rc_proto;


 writel(1, irdec->base + ZX_IR_INTSTCLR);


 if (readl(irdec->base + ZX_IR_CNUM) & ZX_NECRPT) {
  rc_repeat(irdec->rcd);
  goto done;
 }

 rawcode = readl(irdec->base + ZX_IR_CODE);
 not_command = (rawcode >> 24) & 0xff;
 command = (rawcode >> 16) & 0xff;
 not_address = (rawcode >> 8) & 0xff;
 address = rawcode & 0xff;

 scancode = ir_nec_bytes_to_scancode(address, not_address,
         command, not_command,
         &rc_proto);
 rc_keydown(irdec->rcd, rc_proto, scancode, 0);

done:
 return IRQ_HANDLED;
}
