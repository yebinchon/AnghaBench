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
typedef  int /*<<< orphan*/  u32 ;
struct hnae_handle {int q_num; int /*<<< orphan*/ * qs; int /*<<< orphan*/  node; int /*<<< orphan*/  eport_id; struct hnae_buf_ops* bops; struct device* owner_dev; struct hnae_ae_dev* dev; } ;
struct hnae_buf_ops {int dummy; } ;
struct hnae_ae_dev {int /*<<< orphan*/  cls_dev; int /*<<< orphan*/  handle_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  owner; TYPE_1__* ops; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct hnae_handle* (* get_handle ) (struct hnae_ae_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct hnae_handle* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct hnae_ae_dev* FUNC3 (struct fwnode_handle const*) ; 
 struct hnae_buf_ops hnae_bops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hnae_handle*,int /*<<< orphan*/ ,struct hnae_ae_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct hnae_handle* FUNC8 (struct hnae_ae_dev*,int /*<<< orphan*/ ) ; 

struct hnae_handle *FUNC9(struct device *owner_dev,
				    const struct fwnode_handle	*fwnode,
				    u32 port_id,
				    struct hnae_buf_ops *bops)
{
	struct hnae_ae_dev *dev;
	struct hnae_handle *handle;
	int i, j;
	int ret;

	dev = FUNC3(fwnode);
	if (!dev)
		return FUNC0(-ENODEV);

	handle = dev->ops->get_handle(dev, port_id);
	if (FUNC1(handle)) {
		FUNC7(&dev->cls_dev);
		return handle;
	}

	handle->dev = dev;
	handle->owner_dev = owner_dev;
	handle->bops = bops ? bops : &hnae_bops;
	handle->eport_id = port_id;

	for (i = 0; i < handle->q_num; i++) {
		ret = FUNC5(handle, handle->qs[i], dev);
		if (ret)
			goto out_when_init_queue;
	}

	FUNC2(dev->owner);

	FUNC6(&dev->lock, &handle->node, &dev->handle_list);

	return handle;

out_when_init_queue:
	for (j = i - 1; j >= 0; j--)
		FUNC4(handle->qs[j]);

	FUNC7(&dev->cls_dev);

	return FUNC0(-ENOMEM);
}