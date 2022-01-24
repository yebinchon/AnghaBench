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
struct TYPE_4__ {int sizeimage; } ;
struct via_camera {int n_cap_bufs; unsigned int fb_offset; unsigned int* cb_offsets; TYPE_2__ sensor_format; scalar_t__ fbmem; scalar_t__* cb_addrs; TYPE_1__* viadev; } ;
struct TYPE_3__ {int camera_fbmem_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VCR_CAPINTC ; 
 int /*<<< orphan*/  VCR_CI_3BUFS ; 
 scalar_t__ VCR_VBUF1 ; 
 unsigned int VCR_VBUF_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct via_camera*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct via_camera*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct via_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct via_camera *cam)
{
	int nbuf = cam->viadev->camera_fbmem_size/cam->sensor_format.sizeimage;
	int i;
	unsigned int offset;

	/*
	 * See how many buffers we can work with.
	 */
	if (nbuf >= 3) {
		cam->n_cap_bufs = 3;
		FUNC2(cam, VCR_CAPINTC, VCR_CI_3BUFS,
				VCR_CI_3BUFS);
	} else if (nbuf == 2) {
		cam->n_cap_bufs = 2;
		FUNC2(cam, VCR_CAPINTC, 0, VCR_CI_3BUFS);
	} else {
		FUNC0(cam, "Insufficient frame buffer memory\n");
		return -ENOMEM;
	}
	/*
	 * Set them up.
	 */
	offset = cam->fb_offset;
	for (i = 0; i < cam->n_cap_bufs; i++) {
		cam->cb_offsets[i] = offset;
		cam->cb_addrs[i] = cam->fbmem + offset;
		FUNC1(cam, VCR_VBUF1 + i*4, offset & VCR_VBUF_MASK);
		offset += cam->sensor_format.sizeimage;
	}
	return 0;
}