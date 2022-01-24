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
struct ice_qs_cfg {int q_count; int pf_map_size; int* vsi_map; int vsi_map_offset; int /*<<< orphan*/  qs_mutex; int /*<<< orphan*/  pf_map; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ice_qs_cfg *qs_cfg)
{
	int i, index = 0;

	FUNC2(qs_cfg->qs_mutex);
	for (i = 0; i < qs_cfg->q_count; i++) {
		index = FUNC1(qs_cfg->pf_map,
					   qs_cfg->pf_map_size, index);
		if (index >= qs_cfg->pf_map_size)
			goto err_scatter;
		FUNC4(index, qs_cfg->pf_map);
		qs_cfg->vsi_map[i + qs_cfg->vsi_map_offset] = index;
	}
	FUNC3(qs_cfg->qs_mutex);

	return 0;
err_scatter:
	for (index = 0; index < i; index++) {
		FUNC0(qs_cfg->vsi_map[index], qs_cfg->pf_map);
		qs_cfg->vsi_map[index + qs_cfg->vsi_map_offset] = 0;
	}
	FUNC3(qs_cfg->qs_mutex);

	return -ENOMEM;
}