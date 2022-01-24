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
struct ubi_volume_desc {int mode; struct ubi_volume* vol; } ;
struct ubi_volume {int exclusive; int readers; int writers; int metaonly; int ref_count; int checked; int corrupted; int /*<<< orphan*/  skip_check; int /*<<< orphan*/  dev; } ;
struct ubi_device {int vtbl_slots; int /*<<< orphan*/  volumes_lock; int /*<<< orphan*/  ckvol_mutex; int /*<<< orphan*/  ubi_num; struct ubi_volume** volumes; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct ubi_volume_desc* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
#define  UBI_EXCLUSIVE 131 
 int UBI_MAX_DEVICES ; 
#define  UBI_METAONLY 130 
#define  UBI_READONLY 129 
#define  UBI_READWRITE 128 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_volume_desc*) ; 
 struct ubi_volume_desc* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_volume_desc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*,char*,int,int,int) ; 
 struct ubi_device* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubi_device*,char*,int,int /*<<< orphan*/ ) ; 

struct ubi_volume_desc *FUNC17(int ubi_num, int vol_id, int mode)
{
	int err;
	struct ubi_volume_desc *desc;
	struct ubi_device *ubi;
	struct ubi_volume *vol;

	FUNC1("open device %d, volume %d, mode %d", ubi_num, vol_id, mode);

	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
		return FUNC0(-EINVAL);

	if (mode != UBI_READONLY && mode != UBI_READWRITE &&
	    mode != UBI_EXCLUSIVE && mode != UBI_METAONLY)
		return FUNC0(-EINVAL);

	/*
	 * First of all, we have to get the UBI device to prevent its removal.
	 */
	ubi = FUNC14(ubi_num);
	if (!ubi)
		return FUNC0(-ENODEV);

	if (vol_id < 0 || vol_id >= ubi->vtbl_slots) {
		err = -EINVAL;
		goto out_put_ubi;
	}

	desc = FUNC4(sizeof(struct ubi_volume_desc), GFP_KERNEL);
	if (!desc) {
		err = -ENOMEM;
		goto out_put_ubi;
	}

	err = -ENODEV;
	if (!FUNC10(THIS_MODULE))
		goto out_free;

	FUNC8(&ubi->volumes_lock);
	vol = ubi->volumes[vol_id];
	if (!vol)
		goto out_unlock;

	err = -EBUSY;
	switch (mode) {
	case UBI_READONLY:
		if (vol->exclusive)
			goto out_unlock;
		vol->readers += 1;
		break;

	case UBI_READWRITE:
		if (vol->exclusive || vol->writers > 0)
			goto out_unlock;
		vol->writers += 1;
		break;

	case UBI_EXCLUSIVE:
		if (vol->exclusive || vol->writers || vol->readers ||
		    vol->metaonly)
			goto out_unlock;
		vol->exclusive = 1;
		break;

	case UBI_METAONLY:
		if (vol->metaonly || vol->exclusive)
			goto out_unlock;
		vol->metaonly = 1;
		break;
	}
	FUNC2(&vol->dev);
	vol->ref_count += 1;
	FUNC9(&ubi->volumes_lock);

	desc->vol = vol;
	desc->mode = mode;

	FUNC6(&ubi->ckvol_mutex);
	if (!vol->checked && !vol->skip_check) {
		/* This is the first open - check the volume */
		err = FUNC11(ubi, vol_id);
		if (err < 0) {
			FUNC7(&ubi->ckvol_mutex);
			FUNC12(desc);
			return FUNC0(err);
		}
		if (err == 1) {
			FUNC16(ubi, "volume %d on UBI device %d is corrupted",
				 vol_id, ubi->ubi_num);
			vol->corrupted = 1;
		}
		vol->checked = 1;
	}
	FUNC7(&ubi->ckvol_mutex);

	return desc;

out_unlock:
	FUNC9(&ubi->volumes_lock);
	FUNC5(THIS_MODULE);
out_free:
	FUNC3(desc);
out_put_ubi:
	FUNC13(ubi, "cannot open device %d, volume %d, error %d",
		ubi_num, vol_id, err);
	FUNC15(ubi);
	return FUNC0(err);
}