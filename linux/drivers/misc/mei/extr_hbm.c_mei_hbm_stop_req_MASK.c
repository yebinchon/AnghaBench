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
struct mei_device {int dummy; } ;
struct hbm_host_stop_request {int /*<<< orphan*/  reason; int /*<<< orphan*/  hbm_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_STOP_REQUEST ; 
 int /*<<< orphan*/  HOST_STOP_REQ_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct mei_msg_hdr*,size_t const) ; 
 int FUNC1 (struct mei_device*,struct mei_msg_hdr*,struct hbm_host_stop_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct hbm_host_stop_request*,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static int FUNC3(struct mei_device *dev)
{
	struct mei_msg_hdr mei_hdr;
	struct hbm_host_stop_request req;
	const size_t len = sizeof(struct hbm_host_stop_request);

	FUNC0(&mei_hdr, len);

	FUNC2(&req, 0, len);
	req.hbm_cmd = HOST_STOP_REQ_CMD;
	req.reason = DRIVER_STOP_REQUEST;

	return FUNC1(dev, &mei_hdr, &req);
}