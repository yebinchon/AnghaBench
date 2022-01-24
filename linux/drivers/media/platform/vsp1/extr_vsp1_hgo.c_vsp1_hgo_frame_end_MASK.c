#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct vsp1_histogram_buffer {void** addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  vsp1; } ;
struct TYPE_5__ {TYPE_1__ entity; } ;
struct vsp1_hgo {int num_bins; TYPE_2__ histo; scalar_t__ max_rgb; } ;
struct vsp1_entity {int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  VI6_HGO_B_MAXMIN ; 
 int /*<<< orphan*/  VI6_HGO_B_SUM ; 
 int /*<<< orphan*/  VI6_HGO_EXT_HIST_ADDR ; 
 int /*<<< orphan*/  VI6_HGO_EXT_HIST_DATA ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  VI6_HGO_G_MAXMIN ; 
 int /*<<< orphan*/  VI6_HGO_G_SUM ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  VI6_HGO_R_MAXMIN ; 
 int /*<<< orphan*/  VI6_HGO_R_SUM ; 
 struct vsp1_hgo* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (struct vsp1_hgo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct vsp1_histogram_buffer*,size_t) ; 
 struct vsp1_histogram_buffer* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC8(struct vsp1_entity *entity)
{
	struct vsp1_hgo *hgo = FUNC3(&entity->subdev);
	struct vsp1_histogram_buffer *buf;
	unsigned int i;
	size_t size;
	u32 *data;

	buf = FUNC6(&hgo->histo);
	if (!buf)
		return;

	data = buf->addr;

	if (hgo->num_bins == 256) {
		*data++ = FUNC4(hgo, VI6_HGO_G_MAXMIN);
		*data++ = FUNC4(hgo, VI6_HGO_G_SUM);

		for (i = 0; i < 256; ++i) {
			FUNC7(hgo->histo.entity.vsp1,
				   VI6_HGO_EXT_HIST_ADDR, i);
			*data++ = FUNC4(hgo, VI6_HGO_EXT_HIST_DATA);
		}

		size = (2 + 256) * sizeof(u32);
	} else if (hgo->max_rgb) {
		*data++ = FUNC4(hgo, VI6_HGO_G_MAXMIN);
		*data++ = FUNC4(hgo, VI6_HGO_G_SUM);

		for (i = 0; i < 64; ++i)
			*data++ = FUNC4(hgo, FUNC1(i));

		size = (2 + 64) * sizeof(u32);
	} else {
		*data++ = FUNC4(hgo, VI6_HGO_R_MAXMIN);
		*data++ = FUNC4(hgo, VI6_HGO_G_MAXMIN);
		*data++ = FUNC4(hgo, VI6_HGO_B_MAXMIN);

		*data++ = FUNC4(hgo, VI6_HGO_R_SUM);
		*data++ = FUNC4(hgo, VI6_HGO_G_SUM);
		*data++ = FUNC4(hgo, VI6_HGO_B_SUM);

		for (i = 0; i < 64; ++i) {
			data[i] = FUNC4(hgo, FUNC2(i));
			data[i+64] = FUNC4(hgo, FUNC1(i));
			data[i+128] = FUNC4(hgo, FUNC0(i));
		}

		size = (6 + 64 * 3) * sizeof(u32);
	}

	FUNC5(&hgo->histo, buf, size);
}