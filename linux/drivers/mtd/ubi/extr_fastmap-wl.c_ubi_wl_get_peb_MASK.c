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
struct ubi_fm_pool {scalar_t__ used; scalar_t__ size; int* pebs; } ;
struct ubi_device {int /*<<< orphan*/  wl_lock; int /*<<< orphan*/ * lookuptbl; int /*<<< orphan*/  fm_eba_sem; struct ubi_fm_pool fm_wl_pool; struct ubi_fm_pool fm_pool; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*,char*,int) ; 
 int FUNC8 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct ubi_device *ubi)
{
	int ret, attempts = 0;
	struct ubi_fm_pool *pool = &ubi->fm_pool;
	struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;

again:
	FUNC0(&ubi->fm_eba_sem);
	FUNC3(&ubi->wl_lock);

	/* We check here also for the WL pool because at this point we can
	 * refill the WL pool synchronous. */
	if (pool->used == pool->size || wl_pool->used == wl_pool->size) {
		FUNC4(&ubi->wl_lock);
		FUNC9(&ubi->fm_eba_sem);
		ret = FUNC8(ubi);
		if (ret) {
			FUNC7(ubi, "Unable to write a new fastmap: %i", ret);
			FUNC0(&ubi->fm_eba_sem);
			return -ENOSPC;
		}
		FUNC0(&ubi->fm_eba_sem);
		FUNC3(&ubi->wl_lock);
	}

	if (pool->used == pool->size) {
		FUNC4(&ubi->wl_lock);
		attempts++;
		if (attempts == 10) {
			FUNC6(ubi, "Unable to get a free PEB from user WL pool");
			ret = -ENOSPC;
			goto out;
		}
		FUNC9(&ubi->fm_eba_sem);
		ret = FUNC1(ubi);
		if (ret < 0) {
			FUNC0(&ubi->fm_eba_sem);
			goto out;
		}
		goto again;
	}

	FUNC5(pool->used < pool->size);
	ret = pool->pebs[pool->used++];
	FUNC2(ubi, ubi->lookuptbl[ret]);
	FUNC4(&ubi->wl_lock);
out:
	return ret;
}