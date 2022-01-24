#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct vivid_dev {int /*<<< orphan*/  v4l2_dev; scalar_t__ cec_workqueue; int /*<<< orphan*/ * cec_tx_adap; int /*<<< orphan*/  cec_rx_adap; TYPE_1__ fb_info; scalar_t__ has_fb; int /*<<< orphan*/  radio_tx_dev; scalar_t__ has_radio_tx; int /*<<< orphan*/  radio_rx_dev; scalar_t__ has_radio_rx; int /*<<< orphan*/  sdr_cap_dev; scalar_t__ has_sdr_cap; int /*<<< orphan*/  vbi_out_dev; scalar_t__ has_vbi_out; int /*<<< orphan*/  vbi_cap_dev; scalar_t__ has_vbi_cap; int /*<<< orphan*/  vid_out_dev; scalar_t__ has_vid_out; int /*<<< orphan*/  vid_cap_dev; scalar_t__ has_vid_cap; int /*<<< orphan*/  mdev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 unsigned int MAX_OUTPUTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int n_devs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct vivid_dev*) ; 
 struct vivid_dev** vivid_devs ; 
 int /*<<< orphan*/  FUNC10 (struct vivid_dev*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct vivid_dev *dev;
	unsigned int i, j;

	for (i = 0; i < n_devs; i++) {
		dev = vivid_devs[i];
		if (!dev)
			continue;

#ifdef CONFIG_MEDIA_CONTROLLER
		media_device_unregister(&dev->mdev);
		media_device_cleanup(&dev->mdev);
#endif

		if (dev->has_vid_cap) {
			FUNC6(&dev->v4l2_dev, "unregistering %s\n",
				FUNC7(&dev->vid_cap_dev));
			FUNC8(&dev->vid_cap_dev);
		}
		if (dev->has_vid_out) {
			FUNC6(&dev->v4l2_dev, "unregistering %s\n",
				FUNC7(&dev->vid_out_dev));
			FUNC8(&dev->vid_out_dev);
		}
		if (dev->has_vbi_cap) {
			FUNC6(&dev->v4l2_dev, "unregistering %s\n",
				FUNC7(&dev->vbi_cap_dev));
			FUNC8(&dev->vbi_cap_dev);
		}
		if (dev->has_vbi_out) {
			FUNC6(&dev->v4l2_dev, "unregistering %s\n",
				FUNC7(&dev->vbi_out_dev));
			FUNC8(&dev->vbi_out_dev);
		}
		if (dev->has_sdr_cap) {
			FUNC6(&dev->v4l2_dev, "unregistering %s\n",
				FUNC7(&dev->sdr_cap_dev));
			FUNC8(&dev->sdr_cap_dev);
		}
		if (dev->has_radio_rx) {
			FUNC6(&dev->v4l2_dev, "unregistering %s\n",
				FUNC7(&dev->radio_rx_dev));
			FUNC8(&dev->radio_rx_dev);
		}
		if (dev->has_radio_tx) {
			FUNC6(&dev->v4l2_dev, "unregistering %s\n",
				FUNC7(&dev->radio_tx_dev));
			FUNC8(&dev->radio_tx_dev);
		}
		if (dev->has_fb) {
			FUNC6(&dev->v4l2_dev, "unregistering fb%d\n",
				dev->fb_info.node);
			FUNC4(&dev->fb_info);
			FUNC10(dev);
		}
		FUNC0(dev->cec_rx_adap);
		for (j = 0; j < MAX_OUTPUTS; j++)
			FUNC0(dev->cec_tx_adap[j]);
		if (dev->cec_workqueue) {
			FUNC9(dev);
			FUNC1(dev->cec_workqueue);
		}
		FUNC5(&dev->v4l2_dev);
		vivid_devs[i] = NULL;
	}
	return 0;
}