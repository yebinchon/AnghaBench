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
struct ubi_device {int ubi_num; int /*<<< orphan*/  dev; TYPE_1__* mtd; int /*<<< orphan*/  fm_buf; int /*<<< orphan*/  peb_buf; int /*<<< orphan*/  vtbl; int /*<<< orphan*/  fm_work; scalar_t__ bgt_thread; scalar_t__ ref_count; int /*<<< orphan*/  ubi_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int UBI_MAX_DEVICES ; 
 int /*<<< orphan*/  UBI_VOLUME_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*) ; 
 int /*<<< orphan*/ ** ubi_devices ; 
 int /*<<< orphan*/  ubi_devices_lock ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*) ; 
 struct ubi_device* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int FUNC18(int ubi_num, int anyway)
{
	struct ubi_device *ubi;

	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
		return -EINVAL;

	ubi = FUNC11(ubi_num);
	if (!ubi)
		return -EINVAL;

	FUNC4(&ubi_devices_lock);
	FUNC2(&ubi->dev);
	ubi->ref_count -= 1;
	if (ubi->ref_count) {
		if (!anyway) {
			FUNC5(&ubi_devices_lock);
			return -EBUSY;
		}
		/* This may only happen if there is a bug */
		FUNC9(ubi, "%s reference count %d, destroy anyway",
			ubi->ubi_name, ubi->ref_count);
	}
	ubi_devices[ubi_num] = NULL;
	FUNC5(&ubi_devices_lock);

	FUNC6(ubi_num == ubi->ubi_num);
	FUNC13(ubi, UBI_VOLUME_REMOVED, NULL);
	FUNC12(ubi, "detaching mtd%d", ubi->mtd->index);
#ifdef CONFIG_MTD_UBI_FASTMAP
	/* If we don't write a new fastmap at detach time we lose all
	 * EC updates that have been made since the last written fastmap.
	 * In case of fastmap debugging we omit the update to simulate an
	 * unclean shutdown. */
	if (!ubi_dbg_chk_fastmap(ubi))
		ubi_update_fastmap(ubi);
#endif
	/*
	 * Before freeing anything, we have to stop the background thread to
	 * prevent it from doing anything on this device while we are freeing.
	 */
	if (ubi->bgt_thread)
		FUNC1(ubi->bgt_thread);

#ifdef CONFIG_MTD_UBI_FASTMAP
	cancel_work_sync(&ubi->fm_work);
#endif
	FUNC8(ubi);
	FUNC16(ubi);

	FUNC15(ubi);
	FUNC10(ubi);
	FUNC17(ubi->vtbl);
	FUNC17(ubi->peb_buf);
	FUNC17(ubi->fm_buf);
	FUNC12(ubi, "mtd%d is detached", ubi->mtd->index);
	FUNC3(ubi->mtd);
	FUNC2(&ubi->dev);
	return 0;
}