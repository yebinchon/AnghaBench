
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;


 char* get_buf ;
 char hex_asc_hi (unsigned char) ;
 char hex_asc_lo (unsigned char) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 TYPE_1__ ts ;
 int v2printk (char*,int ,char*) ;

__attribute__((used)) static void fill_get_buf(char *buf)
{
 unsigned char checksum = 0;
 int count = 0;
 char ch;

 strcpy(get_buf, "$");
 strcat(get_buf, buf);
 while ((ch = buf[count])) {
  checksum += ch;
  count++;
 }
 strcat(get_buf, "#");
 get_buf[count + 2] = hex_asc_hi(checksum);
 get_buf[count + 3] = hex_asc_lo(checksum);
 get_buf[count + 4] = '\0';
 v2printk("get%i: %s\n", ts.idx, get_buf);
}
