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
struct ubi_volume {scalar_t__ reserved_pebs; } ;
struct ubi_device {scalar_t__ vtbl_slots; struct ubi_volume** volumes; } ;
struct ubi_attach_info {scalar_t__ vols_found; scalar_t__ highest_vol_id; } ;
struct ubi_ainf_volume {int /*<<< orphan*/  vol_id; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UBI_INTERNAL_VOL_START ; 
 scalar_t__ UBI_INT_VOL_COUNT ; 
 int FUNC0 (struct ubi_volume*,struct ubi_ainf_volume*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device const*,char*,scalar_t__,...) ; 
 struct ubi_ainf_volume* FUNC4 (struct ubi_attach_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_attach_info*,struct ubi_ainf_volume*) ; 

__attribute__((used)) static int FUNC7(const struct ubi_device *ubi,
			       struct ubi_attach_info *ai)
{
	int err, i;
	struct ubi_ainf_volume *av;
	struct ubi_volume *vol;

	if (ai->vols_found > UBI_INT_VOL_COUNT + ubi->vtbl_slots) {
		FUNC3(ubi, "found %d volumes while attaching, maximum is %d + %d",
			ai->vols_found, UBI_INT_VOL_COUNT, ubi->vtbl_slots);
		return -EINVAL;
	}

	if (ai->highest_vol_id >= ubi->vtbl_slots + UBI_INT_VOL_COUNT &&
	    ai->highest_vol_id < UBI_INTERNAL_VOL_START) {
		FUNC3(ubi, "too large volume ID %d found",
			ai->highest_vol_id);
		return -EINVAL;
	}

	for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
		FUNC1();

		av = FUNC4(ai, i);
		vol = ubi->volumes[i];
		if (!vol) {
			if (av)
				FUNC6(ai, av);
			continue;
		}

		if (vol->reserved_pebs == 0) {
			FUNC2(i < ubi->vtbl_slots);

			if (!av)
				continue;

			/*
			 * During attaching we found a volume which does not
			 * exist according to the information in the volume
			 * table. This must have happened due to an unclean
			 * reboot while the volume was being removed. Discard
			 * these eraseblocks.
			 */
			FUNC5(ubi, "finish volume %d removal", av->vol_id);
			FUNC6(ai, av);
		} else if (av) {
			err = FUNC0(vol, av);
			if (err)
				return err;
		}
	}

	return 0;
}