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
struct ubi_volume {int /*<<< orphan*/  checkmap; struct ubi_device* ubi; } ;
struct ubi_device {int /*<<< orphan*/  fast_attach; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct ubi_volume *vol, int leb_count)
{
	struct ubi_device *ubi = vol->ubi;

	if (!ubi->fast_attach)
		return 0;

	vol->checkmap = FUNC1(FUNC0(leb_count), sizeof(unsigned long),
				GFP_KERNEL);
	if (!vol->checkmap)
		return -ENOMEM;

	return 0;
}