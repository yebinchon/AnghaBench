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
typedef  void* u8 ;
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;
struct hbm_add_client_response {void* status; void* me_addr; int /*<<< orphan*/  hbm_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEI_HBM_ADD_CLIENT_RES_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_msg_hdr*,size_t const) ; 
 int FUNC3 (struct mei_device*,struct mei_msg_hdr*,struct hbm_add_client_response*) ; 
 int /*<<< orphan*/  FUNC4 (struct hbm_add_client_response*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct mei_device *dev, u8 addr, u8 status)
{
	struct mei_msg_hdr mei_hdr;
	struct hbm_add_client_response resp;
	const size_t len = sizeof(struct hbm_add_client_response);
	int ret;

	FUNC0(dev->dev, "adding client response\n");

	FUNC2(&mei_hdr, len);

	FUNC4(&resp, 0, sizeof(struct hbm_add_client_response));
	resp.hbm_cmd = MEI_HBM_ADD_CLIENT_RES_CMD;
	resp.me_addr = addr;
	resp.status  = status;

	ret = FUNC3(dev, &mei_hdr, &resp);
	if (ret)
		FUNC1(dev->dev, "add client response write failed: ret = %d\n",
			ret);
	return ret;
}