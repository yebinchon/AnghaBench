
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camera_data {TYPE_1__* sbuf; } ;
struct TYPE_2__ {int * data; int * urb; } ;


 int NUM_SBUF ;
 int kfree (int *) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void free_sbufs(struct camera_data *cam)
{
 int i;

 for (i = 0; i < NUM_SBUF; i++) {
  if(cam->sbuf[i].urb) {
   usb_kill_urb(cam->sbuf[i].urb);
   usb_free_urb(cam->sbuf[i].urb);
   cam->sbuf[i].urb = ((void*)0);
  }
  if(cam->sbuf[i].data) {
   kfree(cam->sbuf[i].data);
   cam->sbuf[i].data = ((void*)0);
  }
 }
}
