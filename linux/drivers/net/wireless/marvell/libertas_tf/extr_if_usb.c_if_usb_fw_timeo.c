
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct if_usb_card {int fw_wq; TYPE_1__* priv; int fwdnldover; } ;
struct TYPE_2__ {int surpriseremoved; } ;


 int LBTF_DEB_USB ;
 struct if_usb_card* cardp ;
 struct if_usb_card* from_timer (int ,struct timer_list*,int ) ;
 int fw_timeout ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_deb_usb (char*) ;
 int pr_err (char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void if_usb_fw_timeo(struct timer_list *t)
{
 struct if_usb_card *cardp = from_timer(cardp, t, fw_timeout);

 lbtf_deb_enter(LBTF_DEB_USB);
 if (!cardp->fwdnldover) {

  cardp->priv->surpriseremoved = 1;
  pr_err("Download timed out\n");
 } else {
  lbtf_deb_usb("Download complete, no event. Assuming success\n");
 }
 wake_up(&cardp->fw_wq);
 lbtf_deb_leave(LBTF_DEB_USB);
}
