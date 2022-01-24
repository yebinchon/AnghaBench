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
struct mei_hbm_cl_cmd {int dummy; } ;
struct mei_device {scalar_t__ dev_state; int /*<<< orphan*/  bus_rescan_work; } ;
struct mei_cl {int /*<<< orphan*/  status; int /*<<< orphan*/  me_cl; int /*<<< orphan*/  state; } ;
struct hbm_client_connect_response {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ MEI_CL_CONN_NOT_FOUND ; 
 scalar_t__ MEI_CL_CONN_SUCCESS ; 
 scalar_t__ MEI_DEV_ENABLED ; 
 int /*<<< orphan*/  MEI_FILE_CONNECTED ; 
 int /*<<< orphan*/  MEI_FILE_DISCONNECT_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct mei_device*,struct mei_cl*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mei_device *dev, struct mei_cl *cl,
				   struct mei_hbm_cl_cmd *cmd)
{
	struct hbm_client_connect_response *rs =
		(struct hbm_client_connect_response *)cmd;

	FUNC0(dev, cl, "hbm: connect response status=%s\n",
			FUNC1(rs->status));

	if (rs->status == MEI_CL_CONN_SUCCESS)
		cl->state = MEI_FILE_CONNECTED;
	else {
		cl->state = MEI_FILE_DISCONNECT_REPLY;
		if (rs->status == MEI_CL_CONN_NOT_FOUND) {
			FUNC3(dev, cl->me_cl);
			if (dev->dev_state == MEI_DEV_ENABLED)
				FUNC4(&dev->bus_rescan_work);
		}
	}
	cl->status = FUNC2(rs->status);
}