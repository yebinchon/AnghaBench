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
struct mlx5_geneve {scalar_t__ opt_class; scalar_t__ opt_type; int obj_id; int /*<<< orphan*/  sync_lock; scalar_t__ refcount; int /*<<< orphan*/  mdev; } ;
struct geneve_opt {scalar_t__ opt_class; scalar_t__ type; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct mlx5_geneve*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct mlx5_geneve *geneve, struct geneve_opt *opt)
{
	int res = 0;

	if (FUNC0(geneve))
		return -EOPNOTSUPP;

	FUNC4(&geneve->sync_lock);

	if (geneve->refcount) {
		if (geneve->opt_class == opt->opt_class &&
		    geneve->opt_type == opt->type) {
			/* We already have TLV options obj allocated */
			geneve->refcount++;
		} else {
			/* TLV options obj allocated, but its params
			 * do not match the new request.
			 * We support only one such object.
			 */
			FUNC2(geneve->mdev,
				       "Won't create Geneve TLV opt object with class:type:len = 0x%x:0x%x:%d (another class:type already exists)\n",
				       FUNC1(opt->opt_class),
				       opt->type,
				       opt->length);
			res = -EOPNOTSUPP;
			goto unlock;
		}
	} else {
		/* We don't have any TLV options obj allocated */

		res = FUNC3(geneve->mdev,
						    opt->opt_class,
						    opt->type,
						    opt->length);
		if (res < 0) {
			FUNC2(geneve->mdev,
				       "Failed creating Geneve TLV opt object class:type:len = 0x%x:0x%x:%d (err=%d)\n",
				       FUNC1(opt->opt_class),
				       opt->type, opt->length, res);
			goto unlock;
		}
		geneve->opt_class = opt->opt_class;
		geneve->opt_type = opt->type;
		geneve->obj_id = res;
		geneve->refcount++;
	}

unlock:
	FUNC5(&geneve->sync_lock);
	return res;
}