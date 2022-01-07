
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_dvb; } ;
struct tm6000_core {int * dvb; TYPE_1__ caps; } ;


 int kfree (int *) ;
 int unregister_dvb (struct tm6000_core*) ;

__attribute__((used)) static int dvb_fini(struct tm6000_core *dev)
{
 if (!dev)
  return 0;

 if (!dev->caps.has_dvb)
  return 0;

 if (dev->dvb) {
  unregister_dvb(dev);
  kfree(dev->dvb);
  dev->dvb = ((void*)0);
 }

 return 0;
}
