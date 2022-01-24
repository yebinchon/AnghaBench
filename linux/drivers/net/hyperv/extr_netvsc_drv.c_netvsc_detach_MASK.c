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
struct netvsc_device {int num_chn; int /*<<< orphan*/  subchan_work; } ;
struct net_device_context {struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct netvsc_device*,struct net_device*) ; 
 int FUNC6 (struct netvsc_device*) ; 
 int FUNC7 (struct netvsc_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct hv_device*,struct netvsc_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev,
			 struct netvsc_device *nvdev)
{
	struct net_device_context *ndev_ctx = FUNC2(ndev);
	struct hv_device *hdev = ndev_ctx->device_ctx;
	int ret;

	/* Don't try continuing to try and setup sub channels */
	if (FUNC0(&nvdev->subchan_work))
		nvdev->num_chn = 1;

	/* If device was up (receiving) then shutdown */
	if (FUNC4(ndev)) {
		FUNC5(nvdev, ndev);

		ret = FUNC7(nvdev);
		if (ret) {
			FUNC1(ndev,
				   "unable to close device (ret %d).\n", ret);
			return ret;
		}

		ret = FUNC6(nvdev);
		if (ret) {
			FUNC1(ndev,
				   "Ring buffer not empty after closing rndis\n");
			return ret;
		}
	}

	FUNC3(ndev);

	FUNC8(hdev, nvdev);

	return 0;
}