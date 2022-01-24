#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ice_vsi {TYPE_2__* back; int /*<<< orphan*/  rss_table_size; int /*<<< orphan*/  rss_size; int /*<<< orphan*/  rss_lut_user; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ice_vsi*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct ice_vsi *vsi, bool ena)
{
	int err = 0;
	u8 *lut;

	lut = FUNC1(&vsi->back->pdev->dev, vsi->rss_table_size,
			   GFP_KERNEL);
	if (!lut)
		return -ENOMEM;

	if (ena) {
		if (vsi->rss_lut_user)
			FUNC4(lut, vsi->rss_lut_user, vsi->rss_table_size);
		else
			FUNC2(lut, vsi->rss_table_size,
					 vsi->rss_size);
	}

	err = FUNC3(vsi, NULL, lut, vsi->rss_table_size);
	FUNC0(&vsi->back->pdev->dev, lut);
	return err;
}