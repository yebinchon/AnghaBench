
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpot_data {int wipers; int feat; } ;
struct device {int dummy; } ;


 int DPOT_RDAC0 ;
 int MAX_RDACS ;
 int ad_dpot_remove_files (struct device*,int ,int) ;
 struct dpot_data* dev_get_drvdata (struct device*) ;
 int kfree (struct dpot_data*) ;

int ad_dpot_remove(struct device *dev)
{
 struct dpot_data *data = dev_get_drvdata(dev);
 int i;

 for (i = DPOT_RDAC0; i < MAX_RDACS; i++)
  if (data->wipers & (1 << i))
   ad_dpot_remove_files(dev, data->feat, i);

 kfree(data);

 return 0;
}
