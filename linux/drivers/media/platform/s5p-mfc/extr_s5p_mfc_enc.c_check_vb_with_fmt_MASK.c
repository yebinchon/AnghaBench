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
struct vb2_buffer {int num_planes; int /*<<< orphan*/  index; } ;
struct s5p_mfc_fmt {int num_planes; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_buffer*,int) ; 

__attribute__((used)) static int FUNC3(struct s5p_mfc_fmt *fmt, struct vb2_buffer *vb)
{
	int i;

	if (!fmt)
		return -EINVAL;
	if (fmt->num_planes != vb->num_planes) {
		FUNC1("invalid plane number for the format\n");
		return -EINVAL;
	}
	for (i = 0; i < fmt->num_planes; i++) {
		dma_addr_t dma = FUNC2(vb, i);
		if (!dma) {
			FUNC1("failed to get plane cookie\n");
			return -EINVAL;
		}
		FUNC0(2, "index: %d, plane[%d] cookie: %pad\n",
			  vb->index, i, &dma);
	}
	return 0;
}