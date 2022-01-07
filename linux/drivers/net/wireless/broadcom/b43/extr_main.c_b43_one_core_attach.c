
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int list; int bad_frames_preempt; struct b43_wl* wl; struct b43_bus_dev* dev; int use_pio; } ;
struct b43_wl {int dummy; } ;
struct b43_bus_dev {int dummy; } ;


 int B43_STAT_UNINIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int b43_bus_set_wldev (struct b43_bus_dev*,struct b43_wldev*) ;
 int b43_debugfs_add_device (struct b43_wldev*) ;
 int b43_modparam_pio ;
 int b43_set_status (struct b43_wldev*,int ) ;
 int b43_wireless_core_attach (struct b43_wldev*) ;
 int kfree (struct b43_wldev*) ;
 struct b43_wldev* kzalloc (int,int ) ;
 int modparam_bad_frames_preempt ;

__attribute__((used)) static int b43_one_core_attach(struct b43_bus_dev *dev, struct b43_wl *wl)
{
 struct b43_wldev *wldev;
 int err = -ENOMEM;

 wldev = kzalloc(sizeof(*wldev), GFP_KERNEL);
 if (!wldev)
  goto out;

 wldev->use_pio = b43_modparam_pio;
 wldev->dev = dev;
 wldev->wl = wl;
 b43_set_status(wldev, B43_STAT_UNINIT);
 wldev->bad_frames_preempt = modparam_bad_frames_preempt;
 INIT_LIST_HEAD(&wldev->list);

 err = b43_wireless_core_attach(wldev);
 if (err)
  goto err_kfree_wldev;

 b43_bus_set_wldev(dev, wldev);
 b43_debugfs_add_device(wldev);

      out:
 return err;

      err_kfree_wldev:
 kfree(wldev);
 return err;
}
