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
struct ubi_volume_desc {struct ubi_volume* vol; } ;
struct ubi_volume {int vol_id; scalar_t__ vol_type; int corrupted; struct ubi_device* ubi; } ;
struct ubi_sgl {int dummy; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ UBI_STATIC_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int FUNC1 (struct ubi_volume_desc*,int,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct ubi_device*,struct ubi_volume*,struct ubi_sgl*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_device*,char*,int) ; 

int FUNC5(struct ubi_volume_desc *desc, int lnum, struct ubi_sgl *sgl,
		    int offset, int len, int check)
{
	struct ubi_volume *vol = desc->vol;
	struct ubi_device *ubi = vol->ubi;
	int err, vol_id = vol->vol_id;

	FUNC0("read %d bytes from LEB %d:%d:%d", len, vol_id, lnum, offset);

	err = FUNC1(desc, lnum, offset, len);
	if (err < 0)
		return err;

	if (len == 0)
		return 0;

	err = FUNC3(ubi, vol, sgl, lnum, offset, len, check);
	if (err && FUNC2(err) && vol->vol_type == UBI_STATIC_VOLUME) {
		FUNC4(ubi, "mark volume %d as corrupted", vol_id);
		vol->corrupted = 1;
	}

	return err;
}