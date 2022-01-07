
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BRCMU_BOARDREV_LEN ;
 int snprintf (char*,int ,char*,char,int) ;

char *brcmu_boardrev_str(u32 brev, char *buf)
{
 char c;

 if (brev < 0x100) {
  snprintf(buf, BRCMU_BOARDREV_LEN, "%d.%d",
    (brev & 0xf0) >> 4, brev & 0xf);
 } else {
  c = (brev & 0xf000) == 0x1000 ? 'P' : 'A';
  snprintf(buf, BRCMU_BOARDREV_LEN, "%c%03x", c, brev & 0xfff);
 }
 return buf;
}
