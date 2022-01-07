
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dummy; } ;
struct b43legacy_wldev {int __using_pio; int list; int isr_tasklet; int bad_frames_preempt; struct b43legacy_wl* wl; struct ssb_device* dev; } ;
struct b43legacy_wl {int nr_devs; int devlist; } ;


 int B43legacy_STAT_UNINIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int b43legacy_debugfs_add_device (struct b43legacy_wldev*) ;
 scalar_t__ b43legacy_interrupt_tasklet ;
 int b43legacy_set_status (struct b43legacy_wldev*,int ) ;
 int b43legacy_wireless_core_attach (struct b43legacy_wldev*) ;
 int kfree (struct b43legacy_wldev*) ;
 struct b43legacy_wldev* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int modparam_bad_frames_preempt ;
 scalar_t__ modparam_pio ;
 int ssb_set_drvdata (struct ssb_device*,struct b43legacy_wldev*) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

__attribute__((used)) static int b43legacy_one_core_attach(struct ssb_device *dev,
         struct b43legacy_wl *wl)
{
 struct b43legacy_wldev *wldev;
 int err = -ENOMEM;

 wldev = kzalloc(sizeof(*wldev), GFP_KERNEL);
 if (!wldev)
  goto out;

 wldev->dev = dev;
 wldev->wl = wl;
 b43legacy_set_status(wldev, B43legacy_STAT_UNINIT);
 wldev->bad_frames_preempt = modparam_bad_frames_preempt;
 tasklet_init(&wldev->isr_tasklet,
       (void (*)(unsigned long))b43legacy_interrupt_tasklet,
       (unsigned long)wldev);
 if (modparam_pio)
  wldev->__using_pio = 1;
 INIT_LIST_HEAD(&wldev->list);

 err = b43legacy_wireless_core_attach(wldev);
 if (err)
  goto err_kfree_wldev;

 list_add(&wldev->list, &wl->devlist);
 wl->nr_devs++;
 ssb_set_drvdata(dev, wldev);
 b43legacy_debugfs_add_device(wldev);
out:
 return err;

err_kfree_wldev:
 kfree(wldev);
 return err;
}
