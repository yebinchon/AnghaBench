
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int modes_supported; int dev; } ;


 int CXL_MODE_DEDICATED ;
 int CXL_MODE_DIRECTED ;
 int EINVAL ;
 int activate_afu_directed (struct cxl_afu*) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int guest_afu_activate_mode(struct cxl_afu *afu, int mode)
{
 if (!mode)
  return 0;
 if (!(mode & afu->modes_supported))
  return -EINVAL;

 if (mode == CXL_MODE_DIRECTED)
  return activate_afu_directed(afu);

 if (mode == CXL_MODE_DEDICATED)
  dev_err(&afu->dev, "Dedicated mode not supported\n");

 return -EINVAL;
}
