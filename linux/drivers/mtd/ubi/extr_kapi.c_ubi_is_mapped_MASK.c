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
struct ubi_volume {scalar_t__ upd_marker; int /*<<< orphan*/  vol_id; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ubi_volume*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_volume*,int) ; 

int FUNC3(struct ubi_volume_desc *desc, int lnum)
{
	struct ubi_volume *vol = desc->vol;

	FUNC0("test LEB %d:%d", vol->vol_id, lnum);

	if (!FUNC2(vol, lnum))
		return -EINVAL;

	if (vol->upd_marker)
		return -EBADF;

	return FUNC1(vol, lnum);
}