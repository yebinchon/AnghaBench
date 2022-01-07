
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {scalar_t__ enabled; int adapter; } ;
struct TYPE_2__ {int (* link_ok ) (int ,struct cxl_afu*) ;} ;


 int EIO ;
 int WARN (int,char*) ;
 int afu_enable (struct cxl_afu*) ;
 TYPE_1__* cxl_ops ;
 int stub1 (int ,struct cxl_afu*) ;

__attribute__((used)) static int native_afu_check_and_enable(struct cxl_afu *afu)
{
 if (!cxl_ops->link_ok(afu->adapter, afu)) {
  WARN(1, "Refusing to enable afu while link down!\n");
  return -EIO;
 }
 if (afu->enabled)
  return 0;
 return afu_enable(afu);
}
