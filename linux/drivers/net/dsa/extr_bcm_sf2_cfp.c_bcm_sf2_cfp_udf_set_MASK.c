#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct cfp_udf_layout {TYPE_1__* udfs; } ;
struct bcm_sf2_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * slices; scalar_t__ base_offset; } ;

/* Variables and functions */
 unsigned int UDFS_PER_SLICE ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_sf2_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct bcm_sf2_priv *priv,
				const struct cfp_udf_layout *layout,
				unsigned int slice_num)
{
	u32 offset = layout->udfs[slice_num].base_offset;
	unsigned int i;

	for (i = 0; i < UDFS_PER_SLICE; i++)
		FUNC0(priv, layout->udfs[slice_num].slices[i],
			    offset + i * 4);
}