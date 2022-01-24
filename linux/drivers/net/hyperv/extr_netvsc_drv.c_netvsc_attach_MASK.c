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
struct rndis_device {int /*<<< orphan*/  link_state; } ;
struct netvsc_device_info {int dummy; } ;
struct netvsc_device {int num_chn; int max_chn; struct rndis_device* extension; } ;
struct net_device_context {struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct netvsc_device*) ; 
 int FUNC1 (struct netvsc_device*) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 struct netvsc_device* FUNC8 (struct hv_device*,struct netvsc_device_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct hv_device*,struct netvsc_device*) ; 
 int FUNC10 (struct netvsc_device*) ; 
 int FUNC11 (struct net_device*,struct netvsc_device*,struct netvsc_device_info*) ; 

__attribute__((used)) static int FUNC12(struct net_device *ndev,
			 struct netvsc_device_info *dev_info)
{
	struct net_device_context *ndev_ctx = FUNC2(ndev);
	struct hv_device *hdev = ndev_ctx->device_ctx;
	struct netvsc_device *nvdev;
	struct rndis_device *rdev;
	int ret;

	nvdev = FUNC8(hdev, dev_info);
	if (FUNC0(nvdev))
		return FUNC1(nvdev);

	if (nvdev->num_chn > 1) {
		ret = FUNC11(ndev, nvdev, dev_info);

		/* if unavailable, just proceed with one queue */
		if (ret) {
			nvdev->max_chn = 1;
			nvdev->num_chn = 1;
		}
	}

	/* In any case device is now ready */
	FUNC5(ndev);

	/* Note: enable and attach happen when sub-channels setup */
	FUNC3(ndev);

	if (FUNC7(ndev)) {
		ret = FUNC10(nvdev);
		if (ret)
			goto err;

		rdev = nvdev->extension;
		if (!rdev->link_state)
			FUNC4(ndev);
	}

	return 0;

err:
	FUNC6(ndev);

	FUNC9(hdev, nvdev);

	return ret;
}