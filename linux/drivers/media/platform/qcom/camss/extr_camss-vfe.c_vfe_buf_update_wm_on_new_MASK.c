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
struct vfe_output {int state; struct camss_buffer** buf; int /*<<< orphan*/  active_buf; } ;
struct vfe_device {TYPE_1__* camss; } ;
struct camss_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  VFE_OUTPUT_CONTINUOUS 130 
#define  VFE_OUTPUT_IDLE 129 
#define  VFE_OUTPUT_SINGLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfe_output*,struct camss_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfe_device*,struct vfe_output*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vfe_device*,struct vfe_output*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vfe_device*,struct vfe_output*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vfe_device*,struct vfe_output*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vfe_device *vfe,
				     struct vfe_output *output,
				     struct camss_buffer *new_buf)
{
	int inactive_idx;

	switch (output->state) {
	case VFE_OUTPUT_SINGLE:
		inactive_idx = !output->active_buf;

		if (!output->buf[inactive_idx]) {
			output->buf[inactive_idx] = new_buf;

			if (inactive_idx)
				FUNC5(vfe, output, 0);
			else
				FUNC4(vfe, output, 0);

			FUNC2(vfe, output, 3);
			output->state = VFE_OUTPUT_CONTINUOUS;
		} else {
			FUNC1(output, new_buf);
			FUNC0(vfe->camss->dev,
					    "Inactive buffer is busy\n");
		}
		break;

	case VFE_OUTPUT_IDLE:
		if (!output->buf[0]) {
			output->buf[0] = new_buf;

			FUNC3(vfe, output, 1);

			FUNC2(vfe, output, 1);
			output->state = VFE_OUTPUT_SINGLE;
		} else {
			FUNC1(output, new_buf);
			FUNC0(vfe->camss->dev,
					    "Output idle with buffer set!\n");
		}
		break;

	case VFE_OUTPUT_CONTINUOUS:
	default:
		FUNC1(output, new_buf);
		break;
	}
}