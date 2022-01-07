
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ati_remote {scalar_t__ users; int open_mutex; int irq_urb; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void ati_remote_close(struct ati_remote *ati_remote)
{
 mutex_lock(&ati_remote->open_mutex);
 if (--ati_remote->users == 0)
  usb_kill_urb(ati_remote->irq_urb);
 mutex_unlock(&ati_remote->open_mutex);
}
