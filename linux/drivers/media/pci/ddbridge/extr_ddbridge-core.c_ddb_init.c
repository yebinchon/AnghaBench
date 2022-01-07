
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ddb {int dev; TYPE_3__* link; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_6__ {TYPE_2__* info; int flash_mutex; TYPE_1__ lnb; } ;
struct TYPE_5__ {scalar_t__ fan_num; } ;


 int GPIO_DIRECTION ;
 int GPIO_OUTPUT ;
 scalar_t__ ddb_buffers_alloc (struct ddb*) ;
 int ddb_buffers_free (struct ddb*) ;
 int ddb_device_create (struct ddb*) ;
 scalar_t__ ddb_i2c_init (struct ddb*) ;
 int ddb_i2c_release (struct ddb*) ;
 int ddb_init_boards (struct ddb*) ;
 scalar_t__ ddb_ports_attach (struct ddb*) ;
 int ddb_ports_detach (struct ddb*) ;
 int ddb_ports_init (struct ddb*) ;
 int ddb_ports_release (struct ddb*) ;
 int ddbwritel (struct ddb*,int,int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int mutex_init (int *) ;
 scalar_t__ no_init ;

int ddb_init(struct ddb *dev)
{
 mutex_init(&dev->link[0].lnb.lock);
 mutex_init(&dev->link[0].flash_mutex);
 if (no_init) {
  ddb_device_create(dev);
  return 0;
 }

 ddb_init_boards(dev);

 if (ddb_i2c_init(dev) < 0)
  goto fail1;
 ddb_ports_init(dev);
 if (ddb_buffers_alloc(dev) < 0) {
  dev_info(dev->dev, "Could not allocate buffer memory\n");
  goto fail2;
 }
 if (ddb_ports_attach(dev) < 0)
  goto fail3;

 ddb_device_create(dev);

 if (dev->link[0].info->fan_num) {
  ddbwritel(dev, 1, GPIO_DIRECTION);
  ddbwritel(dev, 1, GPIO_OUTPUT);
 }
 return 0;

fail3:
 dev_err(dev->dev, "fail3\n");
 ddb_ports_detach(dev);
 ddb_buffers_free(dev);
fail2:
 dev_err(dev->dev, "fail2\n");
 ddb_ports_release(dev);
 ddb_i2c_release(dev);
fail1:
 dev_err(dev->dev, "fail1\n");
 return -1;
}
