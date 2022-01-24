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
struct device {int dummy; } ;
struct brcmf_fw_request {struct brcmf_fw_item* items; } ;
struct brcmf_fw_item {int /*<<< orphan*/  path; } ;
struct brcmf_fw {void (* done ) (struct device*,int,struct brcmf_fw_request*) ;struct device* dev; struct brcmf_fw_request* req; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct brcmf_fw*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_fw_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct brcmf_fw* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,struct brcmf_fw*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,struct brcmf_fw*)) ; 

int FUNC6(struct device *dev, struct brcmf_fw_request *req,
			   void (*fw_cb)(struct device *dev, int err,
					 struct brcmf_fw_request *req))
{
	struct brcmf_fw_item *first = &req->items[0];
	struct brcmf_fw *fwctx;
	int ret;

	FUNC0(TRACE, "enter: dev=%s\n", FUNC3(dev));
	if (!fw_cb)
		return -EINVAL;

	if (!FUNC2(req))
		return -EINVAL;

	fwctx = FUNC4(sizeof(*fwctx), GFP_KERNEL);
	if (!fwctx)
		return -ENOMEM;

	fwctx->dev = dev;
	fwctx->req = req;
	fwctx->done = fw_cb;

	ret = FUNC5(THIS_MODULE, true, first->path,
				      fwctx->dev, GFP_KERNEL, fwctx,
				      brcmf_fw_request_done);
	if (ret < 0)
		FUNC1(NULL, fwctx);

	return 0;
}