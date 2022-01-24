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
struct ubi_wl_entry {int ec; int /*<<< orphan*/  pnum; } ;
struct ubi_fastmap_layout {int used_blocks; struct ubi_wl_entry** e; int /*<<< orphan*/ * to_be_tortured; } ;
struct ubi_device {int fm_size; int leb_size; int /*<<< orphan*/  fm_protect; int /*<<< orphan*/  work_sem; int /*<<< orphan*/  fm_eba_sem; int /*<<< orphan*/  wl_lock; struct ubi_fastmap_layout* fm; scalar_t__ fm_disabled; scalar_t__ ro_mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UBI_FM_MAX_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_fastmap_layout*) ; 
 struct ubi_fastmap_layout* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*,struct ubi_fastmap_layout*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*,char*,int) ; 
 struct ubi_wl_entry* FUNC13 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_device*,struct ubi_wl_entry*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ubi_device*,struct ubi_fastmap_layout*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct ubi_device *ubi)
{
	int ret, i, j;
	struct ubi_fastmap_layout *new_fm, *old_fm;
	struct ubi_wl_entry *tmp_e;

	FUNC0(&ubi->fm_protect);
	FUNC0(&ubi->work_sem);
	FUNC0(&ubi->fm_eba_sem);

	FUNC10(ubi);

	if (ubi->ro_mode || ubi->fm_disabled) {
		FUNC16(&ubi->fm_eba_sem);
		FUNC16(&ubi->work_sem);
		FUNC16(&ubi->fm_protect);
		return 0;
	}

	ret = FUNC8(ubi);
	if (ret) {
		FUNC16(&ubi->fm_eba_sem);
		FUNC16(&ubi->work_sem);
		FUNC16(&ubi->fm_protect);
		return ret;
	}

	new_fm = FUNC4(sizeof(*new_fm), GFP_KERNEL);
	if (!new_fm) {
		FUNC16(&ubi->fm_eba_sem);
		FUNC16(&ubi->work_sem);
		FUNC16(&ubi->fm_protect);
		return -ENOMEM;
	}

	new_fm->used_blocks = ubi->fm_size / ubi->leb_size;
	old_fm = ubi->fm;
	ubi->fm = NULL;

	if (new_fm->used_blocks > UBI_FM_MAX_BLOCKS) {
		FUNC9(ubi, "fastmap too large");
		ret = -ENOSPC;
		goto err;
	}

	for (i = 1; i < new_fm->used_blocks; i++) {
		FUNC6(&ubi->wl_lock);
		tmp_e = FUNC13(ubi, 0);
		FUNC7(&ubi->wl_lock);

		if (!tmp_e) {
			if (old_fm && old_fm->e[i]) {
				ret = FUNC1(ubi, old_fm->e[i]->pnum);
				if (ret < 0) {
					FUNC9(ubi, "could not erase old fastmap PEB");

					for (j = 1; j < i; j++) {
						FUNC14(ubi, new_fm->e[j],
								  j, 0);
						new_fm->e[j] = NULL;
					}
					goto err;
				}
				new_fm->e[i] = old_fm->e[i];
				old_fm->e[i] = NULL;
			} else {
				FUNC9(ubi, "could not get any free erase block");

				for (j = 1; j < i; j++) {
					FUNC14(ubi, new_fm->e[j], j, 0);
					new_fm->e[j] = NULL;
				}

				ret = -ENOSPC;
				goto err;
			}
		} else {
			new_fm->e[i] = tmp_e;

			if (old_fm && old_fm->e[i]) {
				FUNC14(ubi, old_fm->e[i], i,
						  old_fm->to_be_tortured[i]);
				old_fm->e[i] = NULL;
			}
		}
	}

	/* Old fastmap is larger than the new one */
	if (old_fm && new_fm->used_blocks < old_fm->used_blocks) {
		for (i = new_fm->used_blocks; i < old_fm->used_blocks; i++) {
			FUNC14(ubi, old_fm->e[i], i,
					  old_fm->to_be_tortured[i]);
			old_fm->e[i] = NULL;
		}
	}

	FUNC6(&ubi->wl_lock);
	tmp_e = FUNC13(ubi, 1);
	FUNC7(&ubi->wl_lock);

	if (old_fm) {
		/* no fresh anchor PEB was found, reuse the old one */
		if (!tmp_e) {
			ret = FUNC1(ubi, old_fm->e[0]->pnum);
			if (ret < 0) {
				FUNC9(ubi, "could not erase old anchor PEB");

				for (i = 1; i < new_fm->used_blocks; i++) {
					FUNC14(ubi, new_fm->e[i],
							  i, 0);
					new_fm->e[i] = NULL;
				}
				goto err;
			}
			new_fm->e[0] = old_fm->e[0];
			new_fm->e[0]->ec = ret;
			old_fm->e[0] = NULL;
		} else {
			/* we've got a new anchor PEB, return the old one */
			FUNC14(ubi, old_fm->e[0], 0,
					  old_fm->to_be_tortured[0]);
			new_fm->e[0] = tmp_e;
			old_fm->e[0] = NULL;
		}
	} else {
		if (!tmp_e) {
			FUNC9(ubi, "could not find any anchor PEB");

			for (i = 1; i < new_fm->used_blocks; i++) {
				FUNC14(ubi, new_fm->e[i], i, 0);
				new_fm->e[i] = NULL;
			}

			ret = -ENOSPC;
			goto err;
		}
		new_fm->e[0] = tmp_e;
	}

	ret = FUNC15(ubi, new_fm);

	if (ret)
		goto err;

out_unlock:
	FUNC16(&ubi->fm_eba_sem);
	FUNC16(&ubi->work_sem);
	FUNC16(&ubi->fm_protect);
	FUNC3(old_fm);
	return ret;

err:
	FUNC12(ubi, "Unable to write new fastmap, err=%i", ret);

	ret = FUNC2(ubi);
	if (ret < 0) {
		FUNC9(ubi, "Unable to invalidate current fastmap!");
		FUNC11(ubi);
	} else {
		FUNC5(ubi, old_fm);
		FUNC5(ubi, new_fm);
		ret = 0;
	}

	FUNC3(new_fm);
	goto out_unlock;
}