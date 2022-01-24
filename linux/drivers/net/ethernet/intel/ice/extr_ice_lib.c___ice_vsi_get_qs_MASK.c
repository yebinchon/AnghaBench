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
struct ice_qs_cfg {int /*<<< orphan*/  scatter_count; int /*<<< orphan*/  q_count; int /*<<< orphan*/  mapping_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_VSI_MAP_SCATTER ; 
 int FUNC0 (struct ice_qs_cfg*) ; 
 int FUNC1 (struct ice_qs_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u16 ; 

__attribute__((used)) static int FUNC3(struct ice_qs_cfg *qs_cfg)
{
	int ret = 0;

	ret = FUNC0(qs_cfg);
	if (ret) {
		/* contig failed, so try with scatter approach */
		qs_cfg->mapping_mode = ICE_VSI_MAP_SCATTER;
		qs_cfg->q_count = FUNC2(u16, qs_cfg->q_count,
					qs_cfg->scatter_count);
		ret = FUNC1(qs_cfg);
	}
	return ret;
}