
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_fh {int dummy; } ;
struct tm6000_core {int is_res_read; struct tm6000_fh* resources; } ;


 int V4L2_DEBUG_RES_LOCK ;
 int dprintk (struct tm6000_core*,int ,char*) ;

__attribute__((used)) static bool res_get(struct tm6000_core *dev, struct tm6000_fh *fh,
     bool is_res_read)
{

 if (dev->resources == fh && dev->is_res_read == is_res_read)
  return 1;


 if (dev->resources)
  return 0;


 dev->resources = fh;
 dev->is_res_read = is_res_read;
 dprintk(dev, V4L2_DEBUG_RES_LOCK, "res: get\n");
 return 1;
}
