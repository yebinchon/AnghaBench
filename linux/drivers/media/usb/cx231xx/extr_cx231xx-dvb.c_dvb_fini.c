
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_dvb; } ;
struct cx231xx {int * dvb; TYPE_1__ board; } ;


 int kfree (int *) ;
 int unregister_dvb (int *) ;

__attribute__((used)) static int dvb_fini(struct cx231xx *dev)
{
 if (!dev->board.has_dvb) {

  return 0;
 }

 if (dev->dvb) {
  unregister_dvb(dev->dvb);
  kfree(dev->dvb);
  dev->dvb = ((void*)0);
 }

 return 0;
}
