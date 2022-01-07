
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {int dummy; } ;
struct platform_device {int dummy; } ;
struct kim_data_s {struct st_data_s* core_data; } ;


 struct kim_data_s* platform_get_drvdata (struct platform_device*) ;
 struct platform_device* st_get_plat_device (int) ;

void st_kim_ref(struct st_data_s **core_data, int id)
{
 struct platform_device *pdev;
 struct kim_data_s *kim_gdata;

 pdev = st_get_plat_device(id);
 if (!pdev)
  goto err;
 kim_gdata = platform_get_drvdata(pdev);
 if (!kim_gdata)
  goto err;

 *core_data = kim_gdata->core_data;
 return;
err:
 *core_data = ((void*)0);
}
