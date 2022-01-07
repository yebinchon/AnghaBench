
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airspy {int urbs_initialized; scalar_t__* urb_list; int dev; } ;


 int airspy_kill_urbs (struct airspy*) ;
 int dev_dbg (int ,char*,int) ;
 int usb_free_urb (scalar_t__) ;

__attribute__((used)) static int airspy_free_urbs(struct airspy *s)
{
 int i;

 airspy_kill_urbs(s);

 for (i = s->urbs_initialized - 1; i >= 0; i--) {
  if (s->urb_list[i]) {
   dev_dbg(s->dev, "free urb=%d\n", i);

   usb_free_urb(s->urb_list[i]);
  }
 }
 s->urbs_initialized = 0;

 return 0;
}
