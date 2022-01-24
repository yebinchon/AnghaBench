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
struct mlx5_rsc_debug {int type; TYPE_1__* fields; int /*<<< orphan*/  root; void* object; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
struct dentry {int dummy; } ;
typedef  enum dbg_rsc_type { ____Placeholder_dbg_rsc_type } dbg_rsc_type ;
struct TYPE_2__ {int i; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fields ; 
 int /*<<< orphan*/  fops ; 
 struct mlx5_rsc_debug* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_rsc_debug*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct mlx5_core_dev *dev, enum dbg_rsc_type type,
			struct dentry *root, struct mlx5_rsc_debug **dbg,
			int rsn, char **field, int nfile, void *data)
{
	struct mlx5_rsc_debug *d;
	char resn[32];
	int i;

	d = FUNC2(FUNC4(d, fields, nfile), GFP_KERNEL);
	if (!d)
		return -ENOMEM;

	d->dev = dev;
	d->object = data;
	d->type = type;
	FUNC3(resn, "0x%x", rsn);
	d->root = FUNC0(resn,  root);

	for (i = 0; i < nfile; i++) {
		d->fields[i].i = i;
		FUNC1(field[i], 0400, d->root, &d->fields[i],
				    &fops);
	}
	*dbg = d;

	return 0;
}