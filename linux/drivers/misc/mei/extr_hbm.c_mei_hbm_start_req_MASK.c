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
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int /*<<< orphan*/  init_clients_timer; int /*<<< orphan*/  hbm_state; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  minor_version; int /*<<< orphan*/  major_version; } ;
struct hbm_host_version_request {TYPE_1__ host_version; int /*<<< orphan*/  hbm_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBM_MAJOR_VERSION ; 
 int /*<<< orphan*/  HBM_MINOR_VERSION ; 
 int /*<<< orphan*/  HOST_START_REQ_CMD ; 
 int /*<<< orphan*/  MEI_CLIENTS_INIT_TIMEOUT ; 
 int /*<<< orphan*/  MEI_HBM_IDLE ; 
 int /*<<< orphan*/  MEI_HBM_STARTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_msg_hdr*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 
 int FUNC3 (struct mei_device*,struct mei_msg_hdr*,struct hbm_host_version_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hbm_host_version_request*,int /*<<< orphan*/ ,size_t const) ; 

int FUNC6(struct mei_device *dev)
{
	struct mei_msg_hdr mei_hdr;
	struct hbm_host_version_request start_req;
	const size_t len = sizeof(struct hbm_host_version_request);
	int ret;

	FUNC2(dev);

	FUNC1(&mei_hdr, len);

	/* host start message */
	FUNC5(&start_req, 0, len);
	start_req.hbm_cmd = HOST_START_REQ_CMD;
	start_req.host_version.major_version = HBM_MAJOR_VERSION;
	start_req.host_version.minor_version = HBM_MINOR_VERSION;

	dev->hbm_state = MEI_HBM_IDLE;
	ret = FUNC3(dev, &mei_hdr, &start_req);
	if (ret) {
		FUNC0(dev->dev, "version message write failed: ret = %d\n",
			ret);
		return ret;
	}

	dev->hbm_state = MEI_HBM_STARTING;
	dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
	FUNC4(dev);
	return 0;
}