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
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int /*<<< orphan*/  init_clients_timer; int /*<<< orphan*/  dev; int /*<<< orphan*/  hbm_state; int /*<<< orphan*/  me_clients_map; } ;
struct hbm_props_request {unsigned long me_addr; int /*<<< orphan*/  hbm_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_CLIENT_PROPERTIES_REQ_CMD ; 
 int /*<<< orphan*/  MEI_CLIENTS_INIT_TIMEOUT ; 
 unsigned long MEI_CLIENTS_MAX ; 
 int /*<<< orphan*/  MEI_HBM_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_msg_hdr*,size_t const) ; 
 int FUNC3 (struct mei_device*,struct mei_msg_hdr*,struct hbm_props_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hbm_props_request*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct mei_device *dev, unsigned long start_idx)
{
	struct mei_msg_hdr mei_hdr;
	struct hbm_props_request prop_req;
	const size_t len = sizeof(struct hbm_props_request);
	unsigned long addr;
	int ret;

	addr = FUNC1(dev->me_clients_map, MEI_CLIENTS_MAX, start_idx);

	/* We got all client properties */
	if (addr == MEI_CLIENTS_MAX) {
		dev->hbm_state = MEI_HBM_STARTED;
		FUNC4(dev);

		return 0;
	}

	FUNC2(&mei_hdr, len);

	FUNC6(&prop_req, 0, sizeof(struct hbm_props_request));

	prop_req.hbm_cmd = HOST_CLIENT_PROPERTIES_REQ_CMD;
	prop_req.me_addr = addr;

	ret = FUNC3(dev, &mei_hdr, &prop_req);
	if (ret) {
		FUNC0(dev->dev, "properties request write failed: ret = %d\n",
			ret);
		return ret;
	}

	dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
	FUNC5(dev);

	return 0;
}