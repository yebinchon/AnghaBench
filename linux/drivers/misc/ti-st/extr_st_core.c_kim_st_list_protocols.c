
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {int* is_registered; int protos_registered; } ;


 int seq_printf (void*,char*,int ,char,char,char) ;

void kim_st_list_protocols(struct st_data_s *st_gdata, void *buf)
{
 seq_printf(buf, "[%d]\nBT=%c\nFM=%c\nGPS=%c\n",
   st_gdata->protos_registered,
   st_gdata->is_registered[0x04] == 1 ? 'R' : 'U',
   st_gdata->is_registered[0x08] == 1 ? 'R' : 'U',
   st_gdata->is_registered[0x09] == 1 ? 'R' : 'U');
}
