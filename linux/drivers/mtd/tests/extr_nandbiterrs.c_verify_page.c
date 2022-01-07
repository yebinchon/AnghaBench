
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int writesize; } ;


 int EIO ;
 scalar_t__ hash (scalar_t__) ;
 TYPE_1__* mtd ;
 int pr_err (char*,unsigned int,scalar_t__,scalar_t__) ;
 int pr_info (char*) ;
 scalar_t__* rbuffer ;
 scalar_t__ seed ;

__attribute__((used)) static int verify_page(int log)
{
 unsigned i, errs = 0;

 if (log)
  pr_info("verify_page\n");

 for (i = 0; i < mtd->writesize; i++) {
  if (rbuffer[i] != hash(i+seed)) {
   pr_err("Error: page offset %u, expected %02x, got %02x\n",
    i, hash(i+seed), rbuffer[i]);
   errs++;
  }
 }

 if (errs)
  return -EIO;
 else
  return 0;
}
