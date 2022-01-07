
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_cc {int dummy; } ;


 int BCMA_CC_NFLASH_CTL ;
 int BCMA_CC_NFLASH_CTL_ERR ;
 int EBUSY ;
 int NCTL_READY ;
 int NFLASH_READY_RETRIES ;
 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int bcm47xxnflash_ops_bcm4706_poll(struct bcma_drv_cc *cc)
{
 int i;

 for (i = 0; i < NFLASH_READY_RETRIES; i++) {
  if (bcma_cc_read32(cc, BCMA_CC_NFLASH_CTL) & NCTL_READY) {
   if (bcma_cc_read32(cc, BCMA_CC_NFLASH_CTL) &
       BCMA_CC_NFLASH_CTL_ERR) {
    pr_err("Error on polling\n");
    return -EBUSY;
   } else {
    return 0;
   }
  }
 }

 pr_err("Polling timeout!\n");
 return -EBUSY;
}
