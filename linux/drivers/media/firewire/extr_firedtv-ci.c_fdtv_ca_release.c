
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int cadev; } ;


 int dvb_unregister_device (int ) ;

void fdtv_ca_release(struct firedtv *fdtv)
{
 dvb_unregister_device(fdtv->cadev);
}
