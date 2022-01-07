
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_st_plat_data {int nshutdown_gpio; } ;
struct TYPE_2__ {int kobj; struct ti_st_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct kim_data_s {int core_data; int * kim_pdev; } ;


 int debugfs_remove_recursive (int ) ;
 int gpio_free (int ) ;
 int kfree (struct kim_data_s*) ;
 int kim_debugfs_dir ;
 struct kim_data_s* platform_get_drvdata (struct platform_device*) ;
 int pr_info (char*) ;
 int st_core_exit (int ) ;
 int sysfs_remove_group (int *,int *) ;
 int uim_attr_grp ;

__attribute__((used)) static int kim_remove(struct platform_device *pdev)
{

 struct ti_st_plat_data *pdata = pdev->dev.platform_data;
 struct kim_data_s *kim_gdata;

 kim_gdata = platform_get_drvdata(pdev);




 gpio_free(pdata->nshutdown_gpio);
 pr_info("nshutdown GPIO Freed");

 debugfs_remove_recursive(kim_debugfs_dir);
 sysfs_remove_group(&pdev->dev.kobj, &uim_attr_grp);
 pr_info("sysfs entries removed");

 kim_gdata->kim_pdev = ((void*)0);
 st_core_exit(kim_gdata->core_data);

 kfree(kim_gdata);
 kim_gdata = ((void*)0);
 return 0;
}
