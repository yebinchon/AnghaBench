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
struct niu_parent {int flags; scalar_t__ plat_type; } ;
struct niu {int /*<<< orphan*/  dev; struct niu_parent* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  H1POLY ; 
 int /*<<< orphan*/  H2POLY ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int PARENT_FLGS_CLS_HWINIT ; 
 scalar_t__ PLAT_TYPE_NIU ; 
 int FUNC0 (struct niu*) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct niu*) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*) ; 
 int /*<<< orphan*/  FUNC6 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct niu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct niu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC10 (struct niu*) ; 
 int FUNC11 (struct niu*) ; 
 int /*<<< orphan*/  FUNC12 (struct niu*) ; 

__attribute__((used)) static int FUNC13(struct niu *np)
{
	struct niu_parent *parent;
	unsigned long flags;
	int err;

	FUNC7(np, flags);

	parent = np->parent;
	err = 0;
	if (!(parent->flags & PARENT_FLGS_CLS_HWINIT)) {
		if (np->parent->plat_type != PLAT_TYPE_NIU) {
			FUNC4(np);
			FUNC5(np);
			err = FUNC0(np);
			if (err) {
				FUNC6(np, probe, KERN_DEBUG, np->dev,
					     "fflp_disable_all_partitions failed, err=%d\n",
					     err);
				goto out;
			}
		}

		err = FUNC10(np);
		if (err) {
			FUNC6(np, probe, KERN_DEBUG, np->dev,
				     "tcam_early_init failed, err=%d\n", err);
			goto out;
		}
		FUNC3(np, 1);
		FUNC1(np, 0);
		FUNC9(H1POLY, 0);
		FUNC9(H2POLY, 0);

		err = FUNC11(np);
		if (err) {
			FUNC6(np, probe, KERN_DEBUG, np->dev,
				     "tcam_flush_all failed, err=%d\n", err);
			goto out;
		}
		if (np->parent->plat_type != PLAT_TYPE_NIU) {
			err = FUNC2(np);
			if (err) {
				FUNC6(np, probe, KERN_DEBUG, np->dev,
					     "fflp_hash_clear failed, err=%d\n",
					     err);
				goto out;
			}
		}

		FUNC12(np);

		parent->flags |= PARENT_FLGS_CLS_HWINIT;
	}
out:
	FUNC8(np, flags);
	return err;
}