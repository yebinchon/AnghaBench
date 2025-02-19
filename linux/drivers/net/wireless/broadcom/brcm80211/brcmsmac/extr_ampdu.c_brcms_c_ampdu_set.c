
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_c_info {TYPE_2__* pub; TYPE_1__* hw; } ;
struct bcma_device {int dummy; } ;
struct ampdu_info {struct brcms_c_info* wlc; } ;
struct TYPE_4__ {int _ampdu; int _n_enab; int unit; } ;
struct TYPE_3__ {struct bcma_device* d11core; } ;


 int ENOTSUPP ;
 int SUPPORT_11N ;
 int brcms_c_ampdu_cap (struct ampdu_info*) ;
 int brcms_err (struct bcma_device*,char*,int ) ;

__attribute__((used)) static int brcms_c_ampdu_set(struct ampdu_info *ampdu, bool on)
{
 struct brcms_c_info *wlc = ampdu->wlc;
 struct bcma_device *core = wlc->hw->d11core;

 wlc->pub->_ampdu = 0;

 if (on) {
  if (!(wlc->pub->_n_enab & SUPPORT_11N)) {
   brcms_err(core, "wl%d: driver not nmode enabled\n",
      wlc->pub->unit);
   return -ENOTSUPP;
  }
  if (!brcms_c_ampdu_cap(ampdu)) {
   brcms_err(core, "wl%d: device not ampdu capable\n",
      wlc->pub->unit);
   return -ENOTSUPP;
  }
  wlc->pub->_ampdu = on;
 }

 return 0;
}
