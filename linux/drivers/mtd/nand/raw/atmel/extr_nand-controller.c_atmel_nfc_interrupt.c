
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int smc; } ;
struct TYPE_4__ {int wait; } ;
struct atmel_hsmc_nand_controller {int complete; TYPE_1__ base; TYPE_2__ op; } ;
typedef int irqreturn_t ;


 int ATMEL_HSMC_NFC_IDR ;
 int ATMEL_HSMC_NFC_SR ;
 int ATMEL_HSMC_NFC_SR_ERRORS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int atmel_nfc_op_done (TYPE_2__*,int) ;
 int complete (int *) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t atmel_nfc_interrupt(int irq, void *data)
{
 struct atmel_hsmc_nand_controller *nc = data;
 u32 sr, rcvd;
 bool done;

 regmap_read(nc->base.smc, ATMEL_HSMC_NFC_SR, &sr);

 rcvd = sr & (nc->op.wait | ATMEL_HSMC_NFC_SR_ERRORS);
 done = atmel_nfc_op_done(&nc->op, sr);

 if (rcvd)
  regmap_write(nc->base.smc, ATMEL_HSMC_NFC_IDR, rcvd);

 if (done)
  complete(&nc->complete);

 return rcvd ? IRQ_HANDLED : IRQ_NONE;
}
