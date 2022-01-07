
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb {size_t nr; int ddb_dev; int dev; } ;


 scalar_t__ DDB_MAX_ADAPTER ;
 int ENODEV ;
 int ENOMEM ;
 int ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MKDEV (int ,size_t) ;
 int PTR_ERR (int ) ;
 int ddb_class ;
 int ddb_device_attrs_add (struct ddb*) ;
 int ddb_device_attrs_del (struct ddb*) ;
 int ddb_major ;
 int ddb_mutex ;
 scalar_t__ ddb_num ;
 struct ddb** ddbs ;
 int dev_info (int ,char*,size_t) ;
 int device_create (int *,int ,int ,struct ddb*,char*,size_t) ;
 int device_destroy (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ddb_device_create(struct ddb *dev)
{
 int res = 0;

 if (ddb_num == DDB_MAX_ADAPTER)
  return -ENOMEM;
 mutex_lock(&ddb_mutex);
 dev->nr = ddb_num;
 ddbs[dev->nr] = dev;
 dev->ddb_dev = device_create(&ddb_class, dev->dev,
         MKDEV(ddb_major, dev->nr),
         dev, "ddbridge%d", dev->nr);
 if (IS_ERR(dev->ddb_dev)) {
  res = PTR_ERR(dev->ddb_dev);
  dev_info(dev->dev, "Could not create ddbridge%d\n", dev->nr);
  goto fail;
 }
 res = ddb_device_attrs_add(dev);
 if (res) {
  ddb_device_attrs_del(dev);
  device_destroy(&ddb_class, MKDEV(ddb_major, dev->nr));
  ddbs[dev->nr] = ((void*)0);
  dev->ddb_dev = ERR_PTR(-ENODEV);
 } else {
  ddb_num++;
 }
fail:
 mutex_unlock(&ddb_mutex);
 return res;
}
