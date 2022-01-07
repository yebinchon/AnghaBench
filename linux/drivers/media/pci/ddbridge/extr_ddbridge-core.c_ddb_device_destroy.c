
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb {int nr; int ddb_dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int MKDEV (int ,int ) ;
 int ddb_class ;
 int ddb_device_attrs_del (struct ddb*) ;
 int ddb_major ;
 int device_destroy (int *,int ) ;

void ddb_device_destroy(struct ddb *dev)
{
 if (IS_ERR(dev->ddb_dev))
  return;
 ddb_device_attrs_del(dev);
 device_destroy(&ddb_class, MKDEV(ddb_major, dev->nr));
}
