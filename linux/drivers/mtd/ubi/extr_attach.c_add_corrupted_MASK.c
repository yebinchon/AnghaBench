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
struct ubi_attach_info {int corr_peb_count; int /*<<< orphan*/  corr; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ubi_ainf_peb {TYPE_1__ u; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ubi_ainf_peb* FUNC2 (struct ubi_attach_info*,int,int) ; 

__attribute__((used)) static int FUNC3(struct ubi_attach_info *ai, int pnum, int ec)
{
	struct ubi_ainf_peb *aeb;

	FUNC0("add to corrupted: PEB %d, EC %d", pnum, ec);

	aeb = FUNC2(ai, pnum, ec);
	if (!aeb)
		return -ENOMEM;

	ai->corr_peb_count += 1;
	FUNC1(&aeb->u.list, &ai->corr);
	return 0;
}