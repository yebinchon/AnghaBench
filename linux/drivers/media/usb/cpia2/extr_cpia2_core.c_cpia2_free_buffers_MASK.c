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
struct camera_data {int frame_size; int num_frames; int /*<<< orphan*/ * frame_buffer; int /*<<< orphan*/ * buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2(struct camera_data *cam)
{
	if(cam->buffers) {
		FUNC0(cam->buffers);
		cam->buffers = NULL;
	}
	if(cam->frame_buffer) {
		FUNC1(cam->frame_buffer, cam->frame_size*cam->num_frames);
		cam->frame_buffer = NULL;
	}
}