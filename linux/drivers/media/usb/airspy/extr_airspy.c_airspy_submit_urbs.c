
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airspy {int urbs_initialized; int urbs_submitted; int dev; int * urb_list; } ;


 int GFP_ATOMIC ;
 int airspy_kill_urbs (struct airspy*) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int airspy_submit_urbs(struct airspy *s)
{
 int i, ret;

 for (i = 0; i < s->urbs_initialized; i++) {
  dev_dbg(s->dev, "submit urb=%d\n", i);
  ret = usb_submit_urb(s->urb_list[i], GFP_ATOMIC);
  if (ret) {
   dev_err(s->dev, "Could not submit URB no. %d - get them all back\n",
     i);
   airspy_kill_urbs(s);
   return ret;
  }
  s->urbs_submitted++;
 }

 return 0;
}
