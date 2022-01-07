
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ngene_ci {int * en; } ;
struct ngene {TYPE_1__* channel; struct ngene_ci ci; } ;
struct TYPE_2__ {int ** i2c_client; } ;


 int dvb_ca_en50221_release (int *) ;
 int dvb_module_release (int *) ;

__attribute__((used)) static void cxd_detach(struct ngene *dev)
{
 struct ngene_ci *ci = &dev->ci;

 dvb_ca_en50221_release(ci->en);

 dvb_module_release(dev->channel[0].i2c_client[0]);
 dev->channel[0].i2c_client[0] = ((void*)0);
 ci->en = ((void*)0);
}
