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
struct sm_ftl {int cache_block; int cache_zone; int /*<<< orphan*/  mutex; int /*<<< orphan*/  timer; int /*<<< orphan*/  readonly; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;
struct ftl_zone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ftl_zone*) ; 
 int FUNC2 (struct ftl_zone*) ; 
 int /*<<< orphan*/  cache_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sm_ftl*,unsigned long,int*,int*,int*) ; 
 int FUNC9 (struct sm_ftl*) ; 
 int /*<<< orphan*/  FUNC10 (struct sm_ftl*,char*,int) ; 
 struct ftl_zone* FUNC11 (struct sm_ftl*,int) ; 

__attribute__((used)) static int FUNC12(struct mtd_blktrans_dev *dev,
				unsigned long sec_no, char *buf)
{
	struct sm_ftl *ftl = dev->priv;
	struct ftl_zone *zone;
	int error = 0, zone_num, block, boffset;

	FUNC0(ftl->readonly);
	FUNC8(ftl, sec_no << 9, &zone_num, &block, &boffset);

	/* No need in flush thread running now */
	FUNC3(&ftl->timer);
	FUNC6(&ftl->mutex);

	zone = FUNC11(ftl, zone_num);
	if (FUNC1(zone)) {
		error = FUNC2(zone);
		goto unlock;
	}

	/* If entry is not in cache, flush it */
	if (ftl->cache_block != block || ftl->cache_zone != zone_num) {

		error = FUNC9(ftl);
		if (error)
			goto unlock;

		ftl->cache_block = block;
		ftl->cache_zone = zone_num;
	}

	FUNC10(ftl, buf, boffset);
unlock:
	FUNC4(&ftl->timer, jiffies + FUNC5(cache_timeout));
	FUNC7(&ftl->mutex);
	return error;
}