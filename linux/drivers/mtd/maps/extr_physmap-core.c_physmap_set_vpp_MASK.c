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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct physmap_flash_info {int vpp_refcnt; int /*<<< orphan*/  vpp_lock; } ;
struct physmap_flash_data {int /*<<< orphan*/  (* set_vpp ) (struct platform_device*,int) ;} ;
struct map_info {scalar_t__ map_priv_1; } ;

/* Variables and functions */
 struct physmap_flash_data* FUNC0 (int /*<<< orphan*/ *) ; 
 struct physmap_flash_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int) ; 

__attribute__((used)) static void FUNC6(struct map_info *map, int state)
{
	struct platform_device *pdev;
	struct physmap_flash_data *physmap_data;
	struct physmap_flash_info *info;
	unsigned long flags;

	pdev = (struct platform_device *)map->map_priv_1;
	physmap_data = FUNC0(&pdev->dev);

	if (!physmap_data->set_vpp)
		return;

	info = FUNC1(pdev);

	FUNC2(&info->vpp_lock, flags);
	if (state) {
		if (++info->vpp_refcnt == 1)    /* first nested 'on' */
			physmap_data->set_vpp(pdev, 1);
	} else {
		if (--info->vpp_refcnt == 0)    /* last nested 'off' */
			physmap_data->set_vpp(pdev, 0);
	}
	FUNC3(&info->vpp_lock, flags);
}