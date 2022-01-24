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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct radar_detector_specs {int dummy; } ;
struct pri_detector {int dummy; } ;
struct dfs_pattern_detector {int num_radar_types; int /*<<< orphan*/  common; int /*<<< orphan*/  channel_detectors; struct radar_detector_specs* radar_spec; } ;
struct channel_detector {int /*<<< orphan*/  head; struct pri_detector** detectors; int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dfs_pattern_detector*,struct channel_detector*) ; 
 struct channel_detector* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct pri_detector** FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pri_detector* FUNC6 (struct radar_detector_specs const*) ; 

__attribute__((used)) static struct channel_detector *
FUNC7(struct dfs_pattern_detector *dpd, u16 freq)
{
	u32 sz, i;
	struct channel_detector *cd;

	cd = FUNC3(sizeof(*cd), GFP_ATOMIC);
	if (cd == NULL)
		goto fail;

	FUNC0(&cd->head);
	cd->freq = freq;
	sz = sizeof(cd->detectors) * dpd->num_radar_types;
	cd->detectors = FUNC4(sz, GFP_ATOMIC);
	if (cd->detectors == NULL)
		goto fail;

	for (i = 0; i < dpd->num_radar_types; i++) {
		const struct radar_detector_specs *rs = &dpd->radar_spec[i];
		struct pri_detector *de = FUNC6(rs);
		if (de == NULL)
			goto fail;
		cd->detectors[i] = de;
	}
	FUNC5(&cd->head, &dpd->channel_detectors);
	return cd;

fail:
	FUNC1(dpd->common, DFS,
		"failed to allocate channel_detector for freq=%d\n", freq);
	FUNC2(dpd, cd);
	return NULL;
}