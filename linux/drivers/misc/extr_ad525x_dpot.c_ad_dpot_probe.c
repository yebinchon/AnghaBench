
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_dpot_bus_data {int dummy; } ;
struct dpot_data {unsigned long devid; int max_pos; int rdac_mask; int feat; int wipers; int* rdac_cache; int uid; struct ad_dpot_bus_data bdata; int update_lock; } ;
struct device {int kobj; } ;


 int DPOT_FEAT (unsigned long) ;
 int DPOT_MAX_POS (unsigned long) ;
 int DPOT_RDAC0 ;
 int DPOT_UID (unsigned long) ;
 int DPOT_WIPERS (unsigned long) ;
 int ENOMEM ;
 int F_CMD_INC ;
 int F_RDACS_WONLY ;
 int GFP_KERNEL ;
 int MAX_RDACS ;
 int ad525x_group_commands ;
 int ad_dpot_add_files (struct device*,int,int) ;
 int ad_dpot_remove_files (struct device*,int,int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,char const*,int) ;
 int dev_set_drvdata (struct device*,struct dpot_data*) ;
 int kfree (struct dpot_data*) ;
 struct dpot_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;

int ad_dpot_probe(struct device *dev,
  struct ad_dpot_bus_data *bdata, unsigned long devid,
       const char *name)
{

 struct dpot_data *data;
 int i, err = 0;

 data = kzalloc(sizeof(struct dpot_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 dev_set_drvdata(dev, data);
 mutex_init(&data->update_lock);

 data->bdata = *bdata;
 data->devid = devid;

 data->max_pos = 1 << DPOT_MAX_POS(devid);
 data->rdac_mask = data->max_pos - 1;
 data->feat = DPOT_FEAT(devid);
 data->uid = DPOT_UID(devid);
 data->wipers = DPOT_WIPERS(devid);

 for (i = DPOT_RDAC0; i < MAX_RDACS; i++)
  if (data->wipers & (1 << i)) {
   err = ad_dpot_add_files(dev, data->feat, i);
   if (err)
    goto exit_remove_files;

   if (data->feat & F_RDACS_WONLY)
    data->rdac_cache[i] = data->max_pos / 2;
  }

 if (data->feat & F_CMD_INC)
  err = sysfs_create_group(&dev->kobj, &ad525x_group_commands);

 if (err) {
  dev_err(dev, "failed to register sysfs hooks\n");
  goto exit_free;
 }

 dev_info(dev, "%s %d-Position Digital Potentiometer registered\n",
   name, data->max_pos);

 return 0;

exit_remove_files:
 for (i = DPOT_RDAC0; i < MAX_RDACS; i++)
  if (data->wipers & (1 << i))
   ad_dpot_remove_files(dev, data->feat, i);

exit_free:
 kfree(data);
 dev_set_drvdata(dev, ((void*)0));
exit:
 dev_err(dev, "failed to create client for %s ID 0x%lX\n",
  name, devid);
 return err;
}
