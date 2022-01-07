
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ti_st_plat_data {int baud_rate; int flow_cntrl; int dev_name; int nshutdown_gpio; } ;
struct TYPE_4__ {int kobj; struct ti_st_plat_data* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct kim_data_s {TYPE_2__* core_data; int baud_rate; int flow_cntrl; int dev_name; int ldisc_installed; int kim_rcvd; struct platform_device* kim_pdev; int nshutdown; } ;
struct TYPE_5__ {struct kim_data_s* kim_data; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ST_DEVICES ;
 int S_IRUGO ;
 int UART_DEV_NAME_LEN ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int ,int ,struct kim_data_s*,int *) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;
 int init_completion (int *) ;
 int kfree (struct kim_data_s*) ;
 int kim_debugfs_dir ;
 struct kim_data_s* kzalloc (int,int ) ;
 int list_fops ;
 int platform_set_drvdata (struct platform_device*,struct kim_data_s*) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int st_core_exit (TYPE_2__*) ;
 int st_core_init (TYPE_2__**) ;
 struct platform_device** st_kim_devices ;
 int strncpy (int ,int ,int ) ;
 int sysfs_create_group (int *,int *) ;
 int uim_attr_grp ;
 scalar_t__ unlikely (int) ;
 int version_fops ;

__attribute__((used)) static int kim_probe(struct platform_device *pdev)
{
 struct kim_data_s *kim_gdata;
 struct ti_st_plat_data *pdata = pdev->dev.platform_data;
 int err;

 if ((pdev->id != -1) && (pdev->id < MAX_ST_DEVICES)) {

  st_kim_devices[pdev->id] = pdev;
 } else {

  st_kim_devices[0] = pdev;
 }

 kim_gdata = kzalloc(sizeof(struct kim_data_s), GFP_KERNEL);
 if (!kim_gdata) {
  pr_err("no mem to allocate");
  return -ENOMEM;
 }
 platform_set_drvdata(pdev, kim_gdata);

 err = st_core_init(&kim_gdata->core_data);
 if (err != 0) {
  pr_err(" ST core init failed");
  err = -EIO;
  goto err_core_init;
 }

 kim_gdata->core_data->kim_data = kim_gdata;


 kim_gdata->nshutdown = pdata->nshutdown_gpio;
 err = gpio_request(kim_gdata->nshutdown, "kim");
 if (unlikely(err)) {
  pr_err(" gpio %d request failed ", kim_gdata->nshutdown);
  goto err_sysfs_group;
 }


 err = gpio_direction_output(kim_gdata->nshutdown, 0);
 if (unlikely(err)) {
  pr_err(" unable to configure gpio %d", kim_gdata->nshutdown);
  goto err_sysfs_group;
 }


 kim_gdata->kim_pdev = pdev;
 init_completion(&kim_gdata->kim_rcvd);
 init_completion(&kim_gdata->ldisc_installed);

 err = sysfs_create_group(&pdev->dev.kobj, &uim_attr_grp);
 if (err) {
  pr_err("failed to create sysfs entries");
  goto err_sysfs_group;
 }


 strncpy(kim_gdata->dev_name, pdata->dev_name, UART_DEV_NAME_LEN);
 kim_gdata->flow_cntrl = pdata->flow_cntrl;
 kim_gdata->baud_rate = pdata->baud_rate;
 pr_info("sysfs entries created\n");

 kim_debugfs_dir = debugfs_create_dir("ti-st", ((void*)0));

 debugfs_create_file("version", S_IRUGO, kim_debugfs_dir,
    kim_gdata, &version_fops);
 debugfs_create_file("protocols", S_IRUGO, kim_debugfs_dir,
    kim_gdata, &list_fops);
 return 0;

err_sysfs_group:
 st_core_exit(kim_gdata->core_data);

err_core_init:
 kfree(kim_gdata);

 return err;
}
