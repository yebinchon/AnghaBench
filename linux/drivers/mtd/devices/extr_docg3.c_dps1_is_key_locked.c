
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct docg3 {TYPE_1__* cascade; int device_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int lock; } ;


 int DOC_DPS1_STATUS ;
 int DOC_DPS_KEY_OK ;
 int doc_register_readb (struct docg3*,int ) ;
 int doc_set_device_id (struct docg3*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct docg3* sysfs_dev2docg3 (struct device*,struct device_attribute*) ;

__attribute__((used)) static ssize_t dps1_is_key_locked(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct docg3 *docg3 = sysfs_dev2docg3(dev, attr);
 int dps1;

 mutex_lock(&docg3->cascade->lock);
 doc_set_device_id(docg3, docg3->device_id);
 dps1 = doc_register_readb(docg3, DOC_DPS1_STATUS);
 doc_set_device_id(docg3, 0);
 mutex_unlock(&docg3->cascade->lock);

 return sprintf(buf, "%d\n", !(dps1 & DOC_DPS_KEY_OK));
}
