
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int address; int adapter_id; } ;
struct TYPE_5__ {TYPE_1__ i2c; } ;
struct TYPE_6__ {TYPE_2__ match; int match_type; int list; } ;
struct ceu_subdev {TYPE_3__ asd; int mbus_flags; } ;
struct ceu_platform_data {unsigned int num_subdevs; struct ceu_async_subdev* subdevs; } ;
struct ceu_device {int notifier; struct ceu_subdev* subdevs; } ;
struct ceu_async_subdev {int i2c_address; int i2c_adapter_id; int flags; } ;


 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int V4L2_ASYNC_MATCH_I2C ;
 int ceu_init_async_subdevs (struct ceu_device*,unsigned int) ;
 int v4l2_async_notifier_add_subdev (int *,TYPE_3__*) ;
 int v4l2_async_notifier_cleanup (int *) ;

__attribute__((used)) static int ceu_parse_platform_data(struct ceu_device *ceudev,
       const struct ceu_platform_data *pdata)
{
 const struct ceu_async_subdev *async_sd;
 struct ceu_subdev *ceu_sd;
 unsigned int i;
 int ret;

 if (pdata->num_subdevs == 0)
  return -ENODEV;

 ret = ceu_init_async_subdevs(ceudev, pdata->num_subdevs);
 if (ret)
  return ret;

 for (i = 0; i < pdata->num_subdevs; i++) {


  async_sd = &pdata->subdevs[i];
  ceu_sd = &ceudev->subdevs[i];

  INIT_LIST_HEAD(&ceu_sd->asd.list);

  ceu_sd->mbus_flags = async_sd->flags;
  ceu_sd->asd.match_type = V4L2_ASYNC_MATCH_I2C;
  ceu_sd->asd.match.i2c.adapter_id = async_sd->i2c_adapter_id;
  ceu_sd->asd.match.i2c.address = async_sd->i2c_address;

  ret = v4l2_async_notifier_add_subdev(&ceudev->notifier,
           &ceu_sd->asd);
  if (ret) {
   v4l2_async_notifier_cleanup(&ceudev->notifier);
   return ret;
  }
 }

 return pdata->num_subdevs;
}
