
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_device {int dummy; } ;
struct TYPE_2__ {int ucode; } ;
struct b43legacy_wldev {TYPE_1__ fw; int fw_load_complete; int restart_work; } ;
struct b43legacy_wl {int devlist; int hw; struct b43legacy_wldev* current_dev; int firmware_load; } ;


 int B43legacy_WARN_ON (int) ;
 int b43legacy_one_core_detach (struct ssb_device*) ;
 int b43legacy_wireless_exit (struct ssb_device*,struct b43legacy_wl*) ;
 int cancel_work_sync (int *) ;
 int complete (int *) ;
 int ieee80211_unregister_hw (int ) ;
 scalar_t__ list_empty (int *) ;
 struct b43legacy_wl* ssb_get_devtypedata (struct ssb_device*) ;
 struct b43legacy_wldev* ssb_get_drvdata (struct ssb_device*) ;

__attribute__((used)) static void b43legacy_remove(struct ssb_device *dev)
{
 struct b43legacy_wl *wl = ssb_get_devtypedata(dev);
 struct b43legacy_wldev *wldev = ssb_get_drvdata(dev);



 cancel_work_sync(&wldev->restart_work);
 cancel_work_sync(&wl->firmware_load);
 complete(&wldev->fw_load_complete);

 B43legacy_WARN_ON(!wl);
 if (!wldev->fw.ucode)
  return;
 if (wl->current_dev == wldev)
  ieee80211_unregister_hw(wl->hw);

 b43legacy_one_core_detach(dev);

 if (list_empty(&wl->devlist))



  b43legacy_wireless_exit(dev, wl);
}
