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
struct ubi_volume_info {scalar_t__ vol_type; unsigned long long size; unsigned long long used_bytes; int /*<<< orphan*/  vol_id; int /*<<< orphan*/  ubi_num; scalar_t__ usable_leb_size; scalar_t__ name_len; int /*<<< orphan*/  name; } ;
struct ubi_device_info {int /*<<< orphan*/  min_io_size; int /*<<< orphan*/  ro_mode; } ;
struct mtd_info {unsigned long long size; struct gluebi_device* name; int /*<<< orphan*/  index; int /*<<< orphan*/  _put_device; int /*<<< orphan*/  _get_device; int /*<<< orphan*/  _erase; int /*<<< orphan*/  _write; int /*<<< orphan*/  _read; scalar_t__ erasesize; int /*<<< orphan*/  writesize; int /*<<< orphan*/  owner; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct gluebi_device {int /*<<< orphan*/  list; struct mtd_info mtd; int /*<<< orphan*/  ubi_num; int /*<<< orphan*/  vol_id; } ;

/* Variables and functions */
 int ENFILE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTD_UBIVOLUME ; 
 int /*<<< orphan*/  MTD_WRITEABLE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ UBI_DYNAMIC_VOLUME ; 
 int /*<<< orphan*/  devices_mutex ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct gluebi_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gluebi_devices ; 
 int /*<<< orphan*/  gluebi_erase ; 
 int /*<<< orphan*/  gluebi_get_device ; 
 int /*<<< orphan*/  gluebi_put_device ; 
 int /*<<< orphan*/  gluebi_read ; 
 int /*<<< orphan*/  gluebi_write ; 
 int /*<<< orphan*/  FUNC2 (struct gluebi_device*) ; 
 struct gluebi_device* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct gluebi_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ubi_device_info *di,
			 struct ubi_volume_info *vi)
{
	struct gluebi_device *gluebi, *g;
	struct mtd_info *mtd;

	gluebi = FUNC4(sizeof(struct gluebi_device), GFP_KERNEL);
	if (!gluebi)
		return -ENOMEM;

	mtd = &gluebi->mtd;
	mtd->name = FUNC3(vi->name, vi->name_len + 1, GFP_KERNEL);
	if (!mtd->name) {
		FUNC2(gluebi);
		return -ENOMEM;
	}

	gluebi->vol_id = vi->vol_id;
	gluebi->ubi_num = vi->ubi_num;
	mtd->type = MTD_UBIVOLUME;
	if (!di->ro_mode)
		mtd->flags = MTD_WRITEABLE;
	mtd->owner      = THIS_MODULE;
	mtd->writesize  = di->min_io_size;
	mtd->erasesize  = vi->usable_leb_size;
	mtd->_read       = gluebi_read;
	mtd->_write      = gluebi_write;
	mtd->_erase      = gluebi_erase;
	mtd->_get_device = gluebi_get_device;
	mtd->_put_device = gluebi_put_device;

	/*
	 * In case of dynamic a volume, MTD device size is just volume size. In
	 * case of a static volume the size is equivalent to the amount of data
	 * bytes.
	 */
	if (vi->vol_type == UBI_DYNAMIC_VOLUME)
		mtd->size = (unsigned long long)vi->usable_leb_size * vi->size;
	else
		mtd->size = vi->used_bytes;

	/* Just a sanity check - make sure this gluebi device does not exist */
	FUNC7(&devices_mutex);
	g = FUNC1(vi->ubi_num, vi->vol_id);
	if (g)
		FUNC0("gluebi MTD device %d form UBI device %d volume %d already exists",
			g->mtd.index, vi->ubi_num, vi->vol_id);
	FUNC8(&devices_mutex);

	if (FUNC6(mtd, NULL, 0)) {
		FUNC0("cannot add MTD device");
		FUNC2(mtd->name);
		FUNC2(gluebi);
		return -ENFILE;
	}

	FUNC7(&devices_mutex);
	FUNC5(&gluebi->list, &gluebi_devices);
	FUNC8(&devices_mutex);
	return 0;
}