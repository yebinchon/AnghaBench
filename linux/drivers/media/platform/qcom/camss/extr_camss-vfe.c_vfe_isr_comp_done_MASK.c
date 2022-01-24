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
typedef  int /*<<< orphan*/  u8 ;
struct vfe_device {scalar_t__* wm_output_map; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 scalar_t__ VFE_LINE_PIX ; 
 int /*<<< orphan*/  FUNC1 (struct vfe_device*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct vfe_device *vfe, u8 comp)
{
	unsigned int i;

	for (i = 0; i < FUNC0(vfe->wm_output_map); i++)
		if (vfe->wm_output_map[i] == VFE_LINE_PIX) {
			FUNC1(vfe, i);
			break;
		}
}