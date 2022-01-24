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
struct ubi_attach_info {int /*<<< orphan*/  aeb_slab_cache; int /*<<< orphan*/  volumes; int /*<<< orphan*/  fastmap; int /*<<< orphan*/  alien; int /*<<< orphan*/  erase; int /*<<< orphan*/  free; int /*<<< orphan*/  corr; } ;
struct ubi_ainf_peb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_attach_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ubi_attach_info* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ubi_attach_info *FUNC4(void)
{
	struct ubi_attach_info *ai;

	ai = FUNC3(sizeof(struct ubi_attach_info), GFP_KERNEL);
	if (!ai)
		return ai;

	FUNC0(&ai->corr);
	FUNC0(&ai->free);
	FUNC0(&ai->erase);
	FUNC0(&ai->alien);
	FUNC0(&ai->fastmap);
	ai->volumes = RB_ROOT;
	ai->aeb_slab_cache = FUNC2("ubi_aeb_slab_cache",
					       sizeof(struct ubi_ainf_peb),
					       0, 0, NULL);
	if (!ai->aeb_slab_cache) {
		FUNC1(ai);
		ai = NULL;
	}

	return ai;
}