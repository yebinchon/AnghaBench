
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int pr_info (char*,char*,unsigned char*,int,int ,int ) ;

void ehea_dump(void *adr, int len, char *msg)
{
 int x;
 unsigned char *deb = adr;
 for (x = 0; x < len; x += 16) {
  pr_info("%s adr=%p ofs=%04x %016llx %016llx\n",
   msg, deb, x, *((u64 *)&deb[0]), *((u64 *)&deb[8]));
  deb += 16;
 }
}
