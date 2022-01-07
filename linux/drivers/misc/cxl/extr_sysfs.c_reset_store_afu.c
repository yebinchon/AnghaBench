
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int contexts_lock; int contexts_idr; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* afu_reset ) (struct cxl_afu*) ;} ;


 int EBUSY ;
 TYPE_1__* cxl_ops ;
 int idr_is_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct cxl_afu*) ;
 struct cxl_afu* to_cxl_afu (struct device*) ;

__attribute__((used)) static ssize_t reset_store_afu(struct device *device,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct cxl_afu *afu = to_cxl_afu(device);
 int rc;


 mutex_lock(&afu->contexts_lock);
 if (!idr_is_empty(&afu->contexts_idr)) {
  rc = -EBUSY;
  goto err;
 }

 if ((rc = cxl_ops->afu_reset(afu)))
  goto err;

 rc = count;
err:
 mutex_unlock(&afu->contexts_lock);
 return rc;
}
