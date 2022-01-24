#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {struct fastrpc_user* private_data; } ;
struct fastrpc_user {int /*<<< orphan*/  user; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sctx; struct fastrpc_channel_ctx* cctx; int /*<<< orphan*/  tgid; int /*<<< orphan*/  maps; int /*<<< orphan*/  pending; int /*<<< orphan*/  lock; } ;
struct fastrpc_channel_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  users; TYPE_1__* rpdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fastrpc_channel_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct fastrpc_channel_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct fastrpc_user*) ; 
 struct fastrpc_user* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fastrpc_channel_ctx* FUNC7 (struct fastrpc_user*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, struct file *filp)
{
	struct fastrpc_channel_ctx *cctx = FUNC7(filp->private_data);
	struct fastrpc_user *fl = NULL;
	unsigned long flags;

	fl = FUNC5(sizeof(*fl), GFP_KERNEL);
	if (!fl)
		return -ENOMEM;

	/* Released in fastrpc_device_release() */
	FUNC2(cctx);

	filp->private_data = fl;
	FUNC10(&fl->lock);
	FUNC9(&fl->mutex);
	FUNC0(&fl->pending);
	FUNC0(&fl->maps);
	FUNC0(&fl->user);
	fl->tgid = current->tgid;
	fl->cctx = cctx;

	fl->sctx = FUNC3(cctx);
	if (!fl->sctx) {
		FUNC1(&cctx->rpdev->dev, "No session available\n");
		FUNC8(&fl->mutex);
		FUNC4(fl);

		return -EBUSY;
	}

	FUNC11(&cctx->lock, flags);
	FUNC6(&fl->user, &cctx->users);
	FUNC12(&cctx->lock, flags);

	return 0;
}