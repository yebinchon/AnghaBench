
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int current_mode; int contexts_lock; scalar_t__ num_procs; int contexts_idr; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* afu_deactivate_mode ) (struct cxl_afu*,int) ;int (* afu_activate_mode ) (struct cxl_afu*,int) ;} ;


 int CXL_MODE_DEDICATED ;
 int CXL_MODE_DIRECTED ;
 int EBUSY ;
 int EINVAL ;
 TYPE_1__* cxl_ops ;
 int idr_is_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncmp (char const*,char*,int) ;
 int stub1 (struct cxl_afu*,int) ;
 int stub2 (struct cxl_afu*,int) ;
 struct cxl_afu* to_cxl_afu (struct device*) ;

__attribute__((used)) static ssize_t mode_store(struct device *device, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct cxl_afu *afu = to_cxl_afu(device);
 int old_mode, mode = -1;
 int rc = -EBUSY;


 mutex_lock(&afu->contexts_lock);
 if (!idr_is_empty(&afu->contexts_idr))
  goto err;

 if (!strncmp(buf, "dedicated_process", 17))
  mode = CXL_MODE_DEDICATED;
 if (!strncmp(buf, "afu_directed", 12))
  mode = CXL_MODE_DIRECTED;
 if (!strncmp(buf, "none", 4))
  mode = 0;

 if (mode == -1) {
  rc = -EINVAL;
  goto err;
 }





 old_mode = afu->current_mode;
 afu->current_mode = 0;
 afu->num_procs = 0;

 mutex_unlock(&afu->contexts_lock);

 if ((rc = cxl_ops->afu_deactivate_mode(afu, old_mode)))
  return rc;
 if ((rc = cxl_ops->afu_activate_mode(afu, mode)))
  return rc;

 return count;
err:
 mutex_unlock(&afu->contexts_lock);
 return rc;
}
