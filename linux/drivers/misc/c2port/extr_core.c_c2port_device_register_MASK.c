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
struct c2port_ops {int blocks_num; int block_size; int /*<<< orphan*/  (* access ) (struct c2port_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  c2d_set; int /*<<< orphan*/  c2d_get; int /*<<< orphan*/  c2ck_set; int /*<<< orphan*/  c2d_dir; } ;
struct c2port_device {int id; int /*<<< orphan*/  dev; scalar_t__ flash_access; scalar_t__ access; int /*<<< orphan*/  mutex; struct c2port_ops* ops; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  C2PORT_NAME_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct c2port_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ bin_attr_flash_data ; 
 int /*<<< orphan*/  c2port_class ; 
 int /*<<< orphan*/  c2port_idr ; 
 int /*<<< orphan*/  c2port_idr_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct c2port_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct c2port_device*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct c2port_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct c2port_device*) ; 
 struct c2port_device* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct c2port_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

struct c2port_device *FUNC18(char *name,
					struct c2port_ops *ops, void *devdata)
{
	struct c2port_device *c2dev;
	int ret;

	if (FUNC17(!ops) || FUNC17(!ops->access) || \
		FUNC17(!ops->c2d_dir) || FUNC17(!ops->c2ck_set) || \
		FUNC17(!ops->c2d_get) || FUNC17(!ops->c2d_set))
		return FUNC0(-EINVAL);

	c2dev = FUNC11(sizeof(struct c2port_device), GFP_KERNEL);
	if (FUNC17(!c2dev))
		return FUNC0(-ENOMEM);

	FUNC7(GFP_KERNEL);
	FUNC13(&c2port_idr_lock);
	ret = FUNC6(&c2port_idr, c2dev, 0, 0, GFP_NOWAIT);
	FUNC14(&c2port_idr_lock);
	FUNC8();

	if (ret < 0)
		goto error_idr_alloc;
	c2dev->id = ret;

	bin_attr_flash_data.size = ops->blocks_num * ops->block_size;

	c2dev->dev = FUNC5(c2port_class, NULL, 0, c2dev,
				   "c2port%d", c2dev->id);
	if (FUNC1(c2dev->dev)) {
		ret = FUNC2(c2dev->dev);
		goto error_device_create;
	}
	FUNC4(c2dev->dev, c2dev);

	FUNC15(c2dev->name, name, C2PORT_NAME_LEN);
	c2dev->ops = ops;
	FUNC12(&c2dev->mutex);

	/* By default C2 port access is off */
	c2dev->access = c2dev->flash_access = 0;
	ops->access(c2dev, 0);

	FUNC3(c2dev->dev, "C2 port %s added\n", name);
	FUNC3(c2dev->dev, "%s flash has %d blocks x %d bytes "
				"(%d bytes total)\n",
				name, ops->blocks_num, ops->block_size,
				ops->blocks_num * ops->block_size);

	return c2dev;

error_device_create:
	FUNC13(&c2port_idr_lock);
	FUNC9(&c2port_idr, c2dev->id);
	FUNC14(&c2port_idr_lock);

error_idr_alloc:
	FUNC10(c2dev);

	return FUNC0(ret);
}