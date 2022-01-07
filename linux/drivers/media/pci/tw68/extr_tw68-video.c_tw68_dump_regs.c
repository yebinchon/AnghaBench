
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw68_dev {int dummy; } ;


 int pr_info (char*,...) ;
 int sprintf (unsigned char*,char*,int) ;
 int tw_readb (int) ;
 int tw_readl (int) ;

__attribute__((used)) static void tw68_dump_regs(struct tw68_dev *dev)
{
 unsigned char line[80];
 int i, j, k;
 unsigned char *cptr;

 pr_info("Full dump of TW68 registers:\n");

 for (i = 0; i < 0x100; i += 32) {
  cptr = line;
  cptr += sprintf(cptr, "%03x  ", i);

  for (j = i; j < i + 16; j += 4)
   cptr += sprintf(cptr, "%08x ", tw_readl(j));
  *cptr++ = ' ';
  for (; j < i + 32; j += 4)
   cptr += sprintf(cptr, "%08x ", tw_readl(j));
  *cptr++ = '\n';
  *cptr = 0;
  pr_info("%s", line);
 }

 while (i < 0x400) {
  cptr = line;
  cptr += sprintf(cptr, "%03x ", i);

  for (j = 0; j < 4; j++) {
   for (k = 0; k < 4; k++) {
    cptr += sprintf(cptr, "%02x ",
     tw_readb(i));
    i += 4;
   }
   *cptr++ = ' ';
  }
  *cptr++ = '\n';
  *cptr = 0;
  pr_info("%s", line);
 }
}
