
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int writesize; } ;


 int BCLR (int ,int) ;
 scalar_t__ CBIT (int ,int) ;
 int EIO ;
 TYPE_1__* mtd ;
 int pr_err (char*) ;
 int pr_info (char*,unsigned int,int) ;
 int * wbuffer ;

__attribute__((used)) static int insert_biterror(unsigned byte)
{
 int bit;

 while (byte < mtd->writesize) {
  for (bit = 7; bit >= 0; bit--) {
   if (CBIT(wbuffer[byte], bit)) {
    BCLR(wbuffer[byte], bit);
    pr_info("Inserted biterror @ %u/%u\n", byte, bit);
    return 0;
   }
  }
  byte++;
 }
 pr_err("biterror: Failed to find a '1' bit\n");
 return -EIO;
}
