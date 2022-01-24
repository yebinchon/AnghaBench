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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  sizeimage; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,char*,unsigned long,unsigned long) ; 
 struct gspca_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vb2_buffer *vb)
{
	struct gspca_dev *gspca_dev = FUNC2(vb->vb2_queue);
	unsigned long size = FUNC0(gspca_dev->pixfmt.sizeimage);

	if (FUNC3(vb, 0) < size) {
		FUNC1(gspca_dev, "buffer too small (%lu < %lu)\n",
			 FUNC3(vb, 0), size);
		return -EINVAL;
	}
	return 0;
}