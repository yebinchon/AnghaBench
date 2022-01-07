
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceu_device {int dev; } ;


 int CEU_CAPSR ;
 int CEU_CAPSR_CPKIL ;
 int CEU_CSTRST_CPTON ;
 int CEU_CSTSR ;
 int EIO ;
 int ceu_read (struct ceu_device*,int ) ;
 int ceu_write (struct ceu_device*,int ,int) ;
 int dev_err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int ceu_soft_reset(struct ceu_device *ceudev)
{
 unsigned int i;

 ceu_write(ceudev, CEU_CAPSR, CEU_CAPSR_CPKIL);

 for (i = 0; i < 100; i++) {
  if (!(ceu_read(ceudev, CEU_CSTSR) & CEU_CSTRST_CPTON))
   break;
  udelay(1);
 }

 if (i == 100) {
  dev_err(ceudev->dev, "soft reset time out\n");
  return -EIO;
 }

 for (i = 0; i < 100; i++) {
  if (!(ceu_read(ceudev, CEU_CAPSR) & CEU_CAPSR_CPKIL))
   return 0;
  udelay(1);
 }


 return -EIO;
}
