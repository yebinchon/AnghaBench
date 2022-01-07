
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kim_data_s {int ldisc_installed; } ;


 int complete (int *) ;

void st_kim_complete(void *kim_data)
{
 struct kim_data_s *kim_gdata = (struct kim_data_s *)kim_data;
 complete(&kim_gdata->ldisc_installed);
}
