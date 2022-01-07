
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct if_usb_card {int surprise_removed; int fw_wq; scalar_t__ fwdnldover; } ;


 struct if_usb_card* cardp ;
 struct if_usb_card* from_timer (int ,struct timer_list*,int ) ;
 int fw_timeout ;
 int lbs_deb_usb (char*) ;
 int pr_err (char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void if_usb_fw_timeo(struct timer_list *t)
{
 struct if_usb_card *cardp = from_timer(cardp, t, fw_timeout);

 if (cardp->fwdnldover) {
  lbs_deb_usb("Download complete, no event. Assuming success\n");
 } else {
  pr_err("Download timed out\n");
  cardp->surprise_removed = 1;
 }
 wake_up(&cardp->fw_wq);
}
