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
struct mei_device {int /*<<< orphan*/  device_lock; } ;
struct mei_cl_cb {int dummy; } ;
struct mei_cl {scalar_t__ state; int status; int /*<<< orphan*/  wait; struct mei_device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIME ; 
 int /*<<< orphan*/  MEI_CL_CONNECT_TIMEOUT ; 
 scalar_t__ MEI_FILE_DISCONNECTED ; 
 scalar_t__ MEI_FILE_DISCONNECTING ; 
 scalar_t__ MEI_FILE_DISCONNECT_REPLY ; 
 int /*<<< orphan*/  MEI_FOP_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_cl*,char*) ; 
 struct mei_cl_cb* FUNC2 (struct mei_cl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mei_cl*,struct mei_cl_cb*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_cl*) ; 
 scalar_t__ FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_cl_cb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mei_cl *cl)
{
	struct mei_device *dev;
	struct mei_cl_cb *cb;
	int rets;

	dev = cl->dev;

	cl->state = MEI_FILE_DISCONNECTING;

	cb = FUNC2(cl, 0, MEI_FOP_DISCONNECT, NULL);
	if (!cb) {
		rets = -ENOMEM;
		goto out;
	}

	if (FUNC5(dev)) {
		rets = FUNC3(cl, cb);
		if (rets) {
			FUNC1(dev, cl, "failed to disconnect.\n");
			goto out;
		}
	}

	FUNC9(&dev->device_lock);
	FUNC10(cl->wait,
			   cl->state == MEI_FILE_DISCONNECT_REPLY ||
			   cl->state == MEI_FILE_DISCONNECTED,
			   FUNC7(MEI_CL_CONNECT_TIMEOUT));
	FUNC8(&dev->device_lock);

	rets = cl->status;
	if (cl->state != MEI_FILE_DISCONNECT_REPLY &&
	    cl->state != MEI_FILE_DISCONNECTED) {
		FUNC0(dev, cl, "timeout on disconnect from FW client.\n");
		rets = -ETIME;
	}

out:
	/* we disconnect also on error */
	FUNC4(cl);
	if (!rets)
		FUNC0(dev, cl, "successfully disconnected from FW client.\n");

	FUNC6(cb);
	return rets;
}