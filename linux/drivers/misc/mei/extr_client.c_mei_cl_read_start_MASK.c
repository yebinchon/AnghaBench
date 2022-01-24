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
struct mei_device {int /*<<< orphan*/  dev; } ;
struct mei_cl_cb {int /*<<< orphan*/  list; } ;
struct mei_cl {scalar_t__ rx_flow_ctrl_creds; int /*<<< orphan*/  rd_pending; int /*<<< orphan*/  me_cl; struct mei_device* dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOTTY ; 
 int /*<<< orphan*/  MEI_FOP_READ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*,struct mei_cl*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mei_cl_cb* FUNC4 (struct mei_cl*,size_t,int /*<<< orphan*/ ,struct file const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_cl*) ; 
 scalar_t__ FUNC6 (struct mei_cl*) ; 
 int FUNC7 (struct mei_device*,struct mei_cl*) ; 
 scalar_t__ FUNC8 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mei_cl_cb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct mei_cl *cl, size_t length, const struct file *fp)
{
	struct mei_device *dev;
	struct mei_cl_cb *cb;
	int rets;

	if (FUNC0(!cl || !cl->dev))
		return -ENODEV;

	dev = cl->dev;

	if (!FUNC5(cl))
		return -ENODEV;

	if (!FUNC10(cl->me_cl)) {
		FUNC2(dev, cl, "no such me client\n");
		return  -ENOTTY;
	}

	if (FUNC6(cl))
		return 0;

	/* HW currently supports only one pending read */
	if (cl->rx_flow_ctrl_creds)
		return -EBUSY;

	cb = FUNC4(cl, length, MEI_FOP_READ, fp);
	if (!cb)
		return -ENOMEM;

	rets = FUNC11(dev->dev);
	if (rets < 0 && rets != -EINPROGRESS) {
		FUNC14(dev->dev);
		FUNC2(dev, cl, "rpm: get failed %d\n", rets);
		goto nortpm;
	}

	rets = 0;
	if (FUNC8(dev)) {
		rets = FUNC7(dev, cl);
		if (rets < 0)
			goto out;

		FUNC3(&cb->list, &cl->rd_pending);
	}
	cl->rx_flow_ctrl_creds++;

out:
	FUNC1(dev, cl, "rpm: autosuspend\n");
	FUNC12(dev->dev);
	FUNC13(dev->dev);
nortpm:
	if (rets)
		FUNC9(cb);

	return rets;
}