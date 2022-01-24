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
typedef  int /*<<< orphan*/  u8 ;
struct mei_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  ctrl_rd_list; int /*<<< orphan*/  hbm_f_ev_supported; } ;
struct mei_cl_cb {int /*<<< orphan*/  list; } ;
struct mei_cl {int status; int /*<<< orphan*/  notify_en; int /*<<< orphan*/  wait; struct mei_device* dev; } ;
struct file {int dummy; } ;
typedef  enum mei_cb_file_ops { ____Placeholder_mei_cb_file_ops } mei_cb_file_ops ;

/* Variables and functions */
 int EFAULT ; 
 int EINPROGRESS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MEI_CL_CONNECT_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*,struct mei_cl*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mei_cl_cb* FUNC4 (struct mei_cl*,int /*<<< orphan*/ ,int,struct file const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_cl*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mei_device*,struct mei_cl*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mei_cl_cb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC18(struct mei_cl *cl,
			  const struct file *fp, u8 request)
{
	struct mei_device *dev;
	struct mei_cl_cb *cb;
	enum mei_cb_file_ops fop_type;
	int rets;

	if (FUNC0(!cl || !cl->dev))
		return -ENODEV;

	dev = cl->dev;

	if (!dev->hbm_f_ev_supported) {
		FUNC1(dev, cl, "notifications not supported\n");
		return -EOPNOTSUPP;
	}

	if (!FUNC5(cl))
		return -ENODEV;

	rets = FUNC13(dev->dev);
	if (rets < 0 && rets != -EINPROGRESS) {
		FUNC16(dev->dev);
		FUNC2(dev, cl, "rpm: get failed %d\n", rets);
		return rets;
	}

	fop_type = FUNC6(request);
	cb = FUNC4(cl, 0, fop_type, fp);
	if (!cb) {
		rets = -ENOMEM;
		goto out;
	}

	if (FUNC8(dev)) {
		if (FUNC7(dev, cl, request)) {
			rets = -ENODEV;
			goto out;
		}
		FUNC3(&cb->list, &dev->ctrl_rd_list);
	}

	FUNC12(&dev->device_lock);
	FUNC17(cl->wait,
			   cl->notify_en == request ||
			   cl->status ||
			   !FUNC5(cl),
			   FUNC10(MEI_CL_CONNECT_TIMEOUT));
	FUNC11(&dev->device_lock);

	if (cl->notify_en != request && !cl->status)
		cl->status = -EFAULT;

	rets = cl->status;

out:
	FUNC1(dev, cl, "rpm: autosuspend\n");
	FUNC14(dev->dev);
	FUNC15(dev->dev);

	FUNC9(cb);
	return rets;
}