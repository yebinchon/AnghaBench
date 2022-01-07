
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct genwqe_dev {int app_unitcfg; } ;


 scalar_t__ isprint (char) ;
 int memset (char*,int ,int) ;
 int min (int,int) ;

int genwqe_read_app_id(struct genwqe_dev *cd, char *app_name, int len)
{
 int i, j;
 u32 app_id = (u32)cd->app_unitcfg;

 memset(app_name, 0, len);
 for (i = 0, j = 0; j < min(len, 4); j++) {
  char ch = (char)((app_id >> (24 - j*8)) & 0xff);

  if (ch == ' ')
   continue;
  app_name[i++] = isprint(ch) ? ch : 'X';
 }
 return i;
}
