
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* adapter_reset ) (struct cxl*) ;} ;


 int EINVAL ;
 int cxl_adapter_context_lock (struct cxl*) ;
 int cxl_adapter_context_unlock (struct cxl*) ;
 TYPE_1__* cxl_ops ;
 int sscanf (char const*,char*,int*) ;
 int stub1 (struct cxl*) ;
 int stub2 (struct cxl*) ;
 struct cxl* to_cxl_adapter (struct device*) ;

__attribute__((used)) static ssize_t reset_adapter_store(struct device *device,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct cxl *adapter = to_cxl_adapter(device);
 int rc;
 int val;

 rc = sscanf(buf, "%i", &val);
 if ((rc != 1) || (val != 1 && val != -1))
  return -EINVAL;






 if (val == 1) {
  rc = cxl_adapter_context_lock(adapter);
  if (rc)
   goto out;

  rc = cxl_ops->adapter_reset(adapter);

  if (rc)
   cxl_adapter_context_unlock(adapter);

 } else if (val == -1) {

  rc = cxl_ops->adapter_reset(adapter);
 }

out:
 return rc ? rc : count;
}
