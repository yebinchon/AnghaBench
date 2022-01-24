#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct b43_wldev {int /*<<< orphan*/  list; int /*<<< orphan*/  bad_frames_preempt; struct b43_wl* wl; struct b43_bus_dev* dev; int /*<<< orphan*/  use_pio; } ;
struct b43_wl {int dummy; } ;
struct b43_bus_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_STAT_UNINIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_bus_dev*,struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  b43_modparam_pio ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 struct b43_wldev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modparam_bad_frames_preempt ; 

__attribute__((used)) static int FUNC7(struct b43_bus_dev *dev, struct b43_wl *wl)
{
	struct b43_wldev *wldev;
	int err = -ENOMEM;

	wldev = FUNC6(sizeof(*wldev), GFP_KERNEL);
	if (!wldev)
		goto out;

	wldev->use_pio = b43_modparam_pio;
	wldev->dev = dev;
	wldev->wl = wl;
	FUNC3(wldev, B43_STAT_UNINIT);
	wldev->bad_frames_preempt = modparam_bad_frames_preempt;
	FUNC0(&wldev->list);

	err = FUNC4(wldev);
	if (err)
		goto err_kfree_wldev;

	FUNC1(dev, wldev);
	FUNC2(wldev);

      out:
	return err;

      err_kfree_wldev:
	FUNC5(wldev);
	return err;
}