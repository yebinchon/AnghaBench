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
struct ice_qs_cfg {int pf_map_size; int q_count; int* vsi_map; int vsi_map_offset; int /*<<< orphan*/  qs_mutex; int /*<<< orphan*/  pf_map; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ice_qs_cfg *qs_cfg)
{
	int offset, i;

	FUNC2(qs_cfg->qs_mutex);
	offset = FUNC0(qs_cfg->pf_map, qs_cfg->pf_map_size,
					    0, qs_cfg->q_count, 0);
	if (offset >= qs_cfg->pf_map_size) {
		FUNC3(qs_cfg->qs_mutex);
		return -ENOMEM;
	}

	FUNC1(qs_cfg->pf_map, offset, qs_cfg->q_count);
	for (i = 0; i < qs_cfg->q_count; i++)
		qs_cfg->vsi_map[i + qs_cfg->vsi_map_offset] = i + offset;
	FUNC3(qs_cfg->qs_mutex);

	return 0;
}