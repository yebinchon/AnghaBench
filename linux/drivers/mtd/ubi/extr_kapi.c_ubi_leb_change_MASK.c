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
struct ubi_volume_desc {scalar_t__ mode; struct ubi_volume* vol; } ;
struct ubi_volume {int vol_id; scalar_t__ vol_type; int usable_leb_size; scalar_t__ upd_marker; struct ubi_device* ubi; } ;
struct ubi_device {int vtbl_slots; int min_io_size; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int EROFS ; 
 scalar_t__ UBI_READONLY ; 
 scalar_t__ UBI_STATIC_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int FUNC1 (struct ubi_device*,struct ubi_volume*,int,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_volume*,int) ; 

int FUNC3(struct ubi_volume_desc *desc, int lnum, const void *buf,
		   int len)
{
	struct ubi_volume *vol = desc->vol;
	struct ubi_device *ubi = vol->ubi;
	int vol_id = vol->vol_id;

	FUNC0("atomically write %d bytes to LEB %d:%d", len, vol_id, lnum);

	if (vol_id < 0 || vol_id >= ubi->vtbl_slots)
		return -EINVAL;

	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
		return -EROFS;

	if (!FUNC2(vol, lnum) || len < 0 ||
	    len > vol->usable_leb_size || len & (ubi->min_io_size - 1))
		return -EINVAL;

	if (vol->upd_marker)
		return -EBADF;

	if (len == 0)
		return 0;

	return FUNC1(ubi, vol, lnum, buf, len);
}