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
typedef  int /*<<< orphan*/  u32 ;
struct vsp1_histogram_buffer {int /*<<< orphan*/ * addr; } ;
struct vsp1_hgt {int /*<<< orphan*/  histo; } ;
struct vsp1_entity {int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HGT_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  VI6_HGT_MAXMIN ; 
 int /*<<< orphan*/  VI6_HGT_SUM ; 
 struct vsp1_hgt* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct vsp1_hgt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vsp1_histogram_buffer*,int /*<<< orphan*/ ) ; 
 struct vsp1_histogram_buffer* FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct vsp1_entity *entity)
{
	struct vsp1_hgt *hgt = FUNC1(&entity->subdev);
	struct vsp1_histogram_buffer *buf;
	unsigned int m;
	unsigned int n;
	u32 *data;

	buf = FUNC4(&hgt->histo);
	if (!buf)
		return;

	data = buf->addr;

	*data++ = FUNC2(hgt, VI6_HGT_MAXMIN);
	*data++ = FUNC2(hgt, VI6_HGT_SUM);

	for (m = 0; m < 6; ++m)
		for (n = 0; n < 32; ++n)
			*data++ = FUNC2(hgt, FUNC0(m, n));

	FUNC3(&hgt->histo, buf, HGT_DATA_SIZE);
}