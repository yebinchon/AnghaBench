
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_nfc_op {int errors; int wait; } ;


 int ATMEL_HSMC_NFC_SR_ERRORS ;

__attribute__((used)) static bool atmel_nfc_op_done(struct atmel_nfc_op *op, u32 status)
{
 op->errors |= status & ATMEL_HSMC_NFC_SR_ERRORS;
 op->wait ^= status & op->wait;

 return !op->wait || op->errors;
}
