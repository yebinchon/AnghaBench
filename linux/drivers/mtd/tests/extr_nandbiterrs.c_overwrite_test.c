
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bitstats ;
struct TYPE_2__ {unsigned int writesize; } ;


 int EIO ;
 int MAXBITS ;
 int hash (scalar_t__) ;
 unsigned int max_overwrite ;
 int memset (unsigned int*,int ,int) ;
 TYPE_1__* mtd ;
 int mtdtest_relax () ;
 int pr_info (char*,...) ;
 int read_page (int ) ;
 scalar_t__ seed ;
 int verify_page (int ) ;
 int * wbuffer ;
 int write_page (int) ;

__attribute__((used)) static int overwrite_test(void)
{
 int err = 0;
 unsigned i;
 unsigned max_corrected = 0;
 unsigned opno = 0;



 static unsigned bitstats[512];

 memset(bitstats, 0, sizeof(bitstats));

 pr_info("overwrite biterrors test\n");

 for (i = 0; i < mtd->writesize; i++)
  wbuffer[i] = hash(i+seed);

 err = write_page(1);
 if (err)
  goto exit;

 while (opno < max_overwrite) {

  err = write_page(0);
  if (err)
   break;

  err = read_page(0);
  if (err >= 0) {
   if (err >= 512) {
    pr_info("Implausible number of bit errors corrected\n");
    err = -EIO;
    break;
   }
   bitstats[err]++;
   if (err > max_corrected) {
    max_corrected = err;
    pr_info("Read reported %d corrected bit errors\n",
     err);
   }
  } else {
   pr_info("Read reported error %d\n", err);
   err = 0;
   break;
  }

  err = verify_page(0);
  if (err) {
   bitstats[max_corrected] = opno;
   pr_info("ECC failure, read data is incorrect despite read success\n");
   break;
  }

  err = mtdtest_relax();
  if (err)
   break;

  opno++;
 }



 pr_info("Bit error histogram (%d operations total):\n", opno);
 for (i = 0; i < max_corrected; i++)
  pr_info("Page reads with %3d corrected bit errors: %d\n",
   i, bitstats[i]);

exit:
 return err;
}
