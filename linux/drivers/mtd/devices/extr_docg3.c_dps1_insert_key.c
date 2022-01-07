
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct docg3 {TYPE_1__* cascade; int device_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int lock; } ;


 int DOC_DPS1_KEY ;
 size_t DOC_LAYOUT_DPS_KEY_LENGTH ;
 size_t EINVAL ;
 int doc_set_device_id (struct docg3*,int ) ;
 int doc_writeb (struct docg3*,char const,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct docg3* sysfs_dev2docg3 (struct device*,struct device_attribute*) ;

__attribute__((used)) static ssize_t dps1_insert_key(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct docg3 *docg3 = sysfs_dev2docg3(dev, attr);
 int i;

 if (count != DOC_LAYOUT_DPS_KEY_LENGTH)
  return -EINVAL;

 mutex_lock(&docg3->cascade->lock);
 doc_set_device_id(docg3, docg3->device_id);
 for (i = 0; i < DOC_LAYOUT_DPS_KEY_LENGTH; i++)
  doc_writeb(docg3, buf[i], DOC_DPS1_KEY);
 doc_set_device_id(docg3, 0);
 mutex_unlock(&docg3->cascade->lock);
 return count;
}
