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
struct ubi_volume {scalar_t__ reserved_pebs; scalar_t__ vol_type; scalar_t__ data_pad; int /*<<< orphan*/  ubi; } ;
struct ubi_ainf_volume {scalar_t__ highest_lnum; scalar_t__ leb_count; scalar_t__ vol_type; scalar_t__ used_ebs; scalar_t__ data_pad; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ubi_ainf_volume const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_volume const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(const struct ubi_volume *vol,
		    const struct ubi_ainf_volume *av)
{
	int err;

	if (av->highest_lnum >= vol->reserved_pebs) {
		err = 1;
		goto bad;
	}
	if (av->leb_count > vol->reserved_pebs) {
		err = 2;
		goto bad;
	}
	if (av->vol_type != vol->vol_type) {
		err = 3;
		goto bad;
	}
	if (av->used_ebs > vol->reserved_pebs) {
		err = 4;
		goto bad;
	}
	if (av->data_pad != vol->data_pad) {
		err = 5;
		goto bad;
	}
	return 0;

bad:
	FUNC2(vol->ubi, "bad attaching information, error %d", err);
	FUNC0(av);
	FUNC1(vol);
	return -EINVAL;
}