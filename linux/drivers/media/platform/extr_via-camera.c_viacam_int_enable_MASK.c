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
struct via_camera {int dummy; } ;

/* Variables and functions */
 int VCR_IC_EAV ; 
 int VCR_IC_EVBI ; 
 int VCR_IC_FFULL ; 
 int VCR_IC_INTEN ; 
 int /*<<< orphan*/  VCR_INTCTRL ; 
 int /*<<< orphan*/  VDE_I_C0AVEN ; 
 int /*<<< orphan*/  FUNC0 (struct via_camera*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct via_camera *cam)
{
	FUNC0(cam, VCR_INTCTRL,
			VCR_IC_INTEN|VCR_IC_EAV|VCR_IC_EVBI|VCR_IC_FFULL);
	FUNC1(VDE_I_C0AVEN);
}