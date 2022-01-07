
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_fh {int dummy; } ;
struct tm6000_core {struct tm6000_fh* resources; } ;


 int V4L2_DEBUG_RES_LOCK ;
 int dprintk (struct tm6000_core*,int ,char*) ;

__attribute__((used)) static void res_free(struct tm6000_core *dev, struct tm6000_fh *fh)
{

 if (dev->resources != fh)
  return;

 dev->resources = ((void*)0);
 dprintk(dev, V4L2_DEBUG_RES_LOCK, "res: put\n");
}
