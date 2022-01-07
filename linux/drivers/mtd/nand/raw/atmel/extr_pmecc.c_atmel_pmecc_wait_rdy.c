
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct atmel_pmecc_user {int isr; struct atmel_pmecc* pmecc; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct atmel_pmecc {TYPE_1__ regs; int dev; } ;


 scalar_t__ ATMEL_PMECC_ISR ;
 scalar_t__ ATMEL_PMECC_SR ;
 int PMECC_MAX_TIMEOUT_MS ;
 int PMECC_SR_BUSY ;
 int dev_err (int ,char*) ;
 int readl_relaxed (scalar_t__) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int ,int) ;

int atmel_pmecc_wait_rdy(struct atmel_pmecc_user *user)
{
 struct atmel_pmecc *pmecc = user->pmecc;
 u32 status;
 int ret;

 ret = readl_relaxed_poll_timeout(pmecc->regs.base +
      ATMEL_PMECC_SR,
      status, !(status & PMECC_SR_BUSY), 0,
      PMECC_MAX_TIMEOUT_MS * 1000);
 if (ret) {
  dev_err(pmecc->dev,
   "Timeout while waiting for PMECC ready.\n");
  return ret;
 }

 user->isr = readl_relaxed(pmecc->regs.base + ATMEL_PMECC_ISR);

 return 0;
}
