
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mceusb_dev {int dev; int kevent; int kevent_flags; } ;


 int EVENT_RST_PEND ;
 int dev_dbg (int ,char*,int) ;
 int schedule_work (int *) ;
 int set_bit (int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mceusb_defer_kevent(struct mceusb_dev *ir, int kevent)
{
 set_bit(kevent, &ir->kevent_flags);

 if (test_bit(EVENT_RST_PEND, &ir->kevent_flags)) {
  dev_dbg(ir->dev, "kevent %d dropped pending USB Reset Device",
   kevent);
  return;
 }

 if (!schedule_work(&ir->kevent))
  dev_dbg(ir->dev, "kevent %d already scheduled", kevent);
 else
  dev_dbg(ir->dev, "kevent %d scheduled", kevent);
}
