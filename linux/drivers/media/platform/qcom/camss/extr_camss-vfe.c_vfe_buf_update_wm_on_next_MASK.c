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
struct vfe_output {int state; } ;
struct vfe_device {TYPE_1__* camss; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  VFE_OUTPUT_CONTINUOUS 129 
#define  VFE_OUTPUT_SINGLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vfe_device*,struct vfe_output*,int) ; 

__attribute__((used)) static void FUNC2(struct vfe_device *vfe,
				      struct vfe_output *output)
{
	switch (output->state) {
	case VFE_OUTPUT_CONTINUOUS:
		FUNC1(vfe, output, 3);
		break;
	case VFE_OUTPUT_SINGLE:
	default:
		FUNC0(vfe->camss->dev,
				    "Next buf in wrong state! %d\n",
				    output->state);
		break;
	}
}