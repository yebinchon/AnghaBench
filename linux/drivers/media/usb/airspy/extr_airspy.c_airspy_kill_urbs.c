
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airspy {int urbs_submitted; int * urb_list; int dev; } ;


 int dev_dbg (int ,char*,int) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int airspy_kill_urbs(struct airspy *s)
{
 int i;

 for (i = s->urbs_submitted - 1; i >= 0; i--) {
  dev_dbg(s->dev, "kill urb=%d\n", i);

  usb_kill_urb(s->urb_list[i]);
 }
 s->urbs_submitted = 0;

 return 0;
}
