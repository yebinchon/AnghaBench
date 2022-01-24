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
struct ubi_work {struct ubi_wl_entry* e; } ;
struct ubi_wl_entry {int /*<<< orphan*/  ec; int /*<<< orphan*/  pnum; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ubi_device*,struct ubi_work*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_work*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*,struct ubi_wl_entry*) ; 

__attribute__((used)) static int FUNC4(struct ubi_device *ubi, struct ubi_work *wl_wrk,
			  int shutdown)
{
	int ret;

	if (shutdown) {
		struct ubi_wl_entry *e = wl_wrk->e;

		FUNC1("cancel erasure of PEB %d EC %d", e->pnum, e->ec);
		FUNC2(wl_wrk);
		FUNC3(ubi, e);
		return 0;
	}

	ret = FUNC0(ubi, wl_wrk);
	FUNC2(wl_wrk);
	return ret;
}