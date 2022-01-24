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
struct media_request {int /*<<< orphan*/  debug_str; scalar_t__ access_count; scalar_t__ updating_count; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  objects; int /*<<< orphan*/  kref; scalar_t__ num_incomplete_objects; int /*<<< orphan*/  state; struct media_device* mdev; } ;
struct media_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  request_id; TYPE_1__* ops; } ;
struct file {struct media_request* private_data; } ;
struct TYPE_2__ {struct media_request* (* req_alloc ) (struct media_device*) ;int /*<<< orphan*/  req_free; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int /*<<< orphan*/  MEDIA_REQUEST_STATE_IDLE ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct file* FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct media_request* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  request_fops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct media_request* FUNC16 (struct media_device*) ; 

int FUNC17(struct media_device *mdev, int *alloc_fd)
{
	struct media_request *req;
	struct file *filp;
	int fd;
	int ret;

	/* Either both are NULL or both are non-NULL */
	if (FUNC3(!mdev->ops->req_alloc ^ !mdev->ops->req_free))
		return -ENOMEM;

	fd = FUNC9(O_CLOEXEC);
	if (fd < 0)
		return fd;

	filp = FUNC4("request", &request_fops, NULL, O_CLOEXEC);
	if (FUNC1(filp)) {
		ret = FUNC2(filp);
		goto err_put_fd;
	}

	if (mdev->ops->req_alloc)
		req = mdev->ops->req_alloc(mdev);
	else
		req = FUNC12(sizeof(*req), GFP_KERNEL);
	if (!req) {
		ret = -ENOMEM;
		goto err_fput;
	}

	filp->private_data = req;
	req->mdev = mdev;
	req->state = MEDIA_REQUEST_STATE_IDLE;
	req->num_incomplete_objects = 0;
	FUNC11(&req->kref);
	FUNC0(&req->objects);
	FUNC15(&req->lock);
	FUNC10(&req->poll_wait);
	req->updating_count = 0;
	req->access_count = 0;

	*alloc_fd = fd;

	FUNC14(req->debug_str, sizeof(req->debug_str), "%u:%d",
		 FUNC5(&mdev->request_id), fd);
	FUNC6(mdev->dev, "request: allocated %s\n", req->debug_str);

	FUNC7(fd, filp);

	return 0;

err_fput:
	FUNC8(filp);

err_put_fd:
	FUNC13(fd);

	return ret;
}