
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_cc {int dummy; } ;


 int BCMA_CC_NFLASH_CTL ;
 int EBUSY ;
 int NCTL_START ;
 int NFLASH_READY_RETRIES ;
 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_cc_write32 (struct bcma_drv_cc*,int ,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int bcm47xxnflash_ops_bcm4706_ctl_cmd(struct bcma_drv_cc *cc, u32 code)
{
 int i = 0;

 bcma_cc_write32(cc, BCMA_CC_NFLASH_CTL, NCTL_START | code);
 for (i = 0; i < NFLASH_READY_RETRIES; i++) {
  if (!(bcma_cc_read32(cc, BCMA_CC_NFLASH_CTL) & NCTL_START)) {
   i = 0;
   break;
  }
 }
 if (i) {
  pr_err("NFLASH control command not ready!\n");
  return -EBUSY;
 }
 return 0;
}
