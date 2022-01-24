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
typedef  int /*<<< orphan*/  u64 ;
struct res_common {scalar_t__ state; char const* func_name; int owner; scalar_t__ from_state; } ;
struct mlx4_dev {int dummy; } ;
typedef  enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;

/* Variables and functions */
 int EBUSY ; 
 int ENONET ; 
 int EPERM ; 
 scalar_t__ RES_ANY_BUSY ; 
 struct res_common* FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mlx4_dev *dev, int slave, u64 res_id,
		    enum mlx4_resource type,
		    void *res, const char *func_name)
{
	struct res_common *r;
	int err = 0;

	FUNC4(FUNC2(dev));
	r = FUNC0(dev, res_id, type);
	if (!r) {
		err = -ENONET;
		goto exit;
	}

	if (r->state == RES_ANY_BUSY) {
		FUNC3(dev,
			  "%s(%d) trying to get resource %llx of type %s, but it's already taken by %s\n",
			  func_name, slave, res_id, FUNC1(type),
			  r->func_name);
		err = -EBUSY;
		goto exit;
	}

	if (r->owner != slave) {
		err = -EPERM;
		goto exit;
	}

	r->from_state = r->state;
	r->state = RES_ANY_BUSY;
	r->func_name = func_name;

	if (res)
		*((struct res_common **)res) = r;

exit:
	FUNC5(FUNC2(dev));
	return err;
}