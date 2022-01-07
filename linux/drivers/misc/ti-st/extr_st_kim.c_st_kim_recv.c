
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {struct kim_data_s* kim_data; } ;
struct kim_data_s {int dummy; } ;


 int kim_int_recv (struct kim_data_s*,unsigned char const*,long) ;

void st_kim_recv(void *disc_data, const unsigned char *data, long count)
{
 struct st_data_s *st_gdata = (struct st_data_s *)disc_data;
 struct kim_data_s *kim_gdata = st_gdata->kim_data;




 kim_int_recv(kim_gdata, data, count);
 return;
}
