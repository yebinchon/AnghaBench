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
struct ubi_volume {int readers; int writers; int ref_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  metaonly; int /*<<< orphan*/  exclusive; int /*<<< orphan*/  vol_id; struct ubi_device* ubi; } ;
struct ubi_device {int /*<<< orphan*/  volumes_lock; int /*<<< orphan*/  ubi_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
#define  UBI_EXCLUSIVE 131 
#define  UBI_METAONLY 130 
#define  UBI_READONLY 129 
#define  UBI_READWRITE 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_volume_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*) ; 

void FUNC7(struct ubi_volume_desc *desc)
{
	struct ubi_volume *vol = desc->vol;
	struct ubi_device *ubi = vol->ubi;

	FUNC0("close device %d, volume %d, mode %d",
		ubi->ubi_num, vol->vol_id, desc->mode);

	FUNC4(&ubi->volumes_lock);
	switch (desc->mode) {
	case UBI_READONLY:
		vol->readers -= 1;
		break;
	case UBI_READWRITE:
		vol->writers -= 1;
		break;
	case UBI_EXCLUSIVE:
		vol->exclusive = 0;
		break;
	case UBI_METAONLY:
		vol->metaonly = 0;
		break;
	}
	vol->ref_count -= 1;
	FUNC5(&ubi->volumes_lock);

	FUNC1(desc);
	FUNC3(&vol->dev);
	FUNC6(ubi);
	FUNC2(THIS_MODULE);
}