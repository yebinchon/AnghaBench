
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mdev_lock; int * mdev; } ;
struct dvb_usb_adapter {TYPE_1__ dvb_adap; } ;


 int kfree (int *) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dvb_usb_media_device_unregister(struct dvb_usb_adapter *adap)
{
}
