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
struct vortex_private {int dummy; } ;

/* Variables and functions */
 int MDIO_DATA_WRITE1 ; 
 int MDIO_SHIFT_CLK ; 
 int /*<<< orphan*/  Wn4_PhysicalMgmt ; 
 int /*<<< orphan*/  FUNC0 (struct vortex_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct vortex_private*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vortex_private *vp, int bits)
{
	/* Establish sync by sending at least 32 logic ones. */
	while (-- bits >= 0) {
		FUNC1(vp, MDIO_DATA_WRITE1, 4, Wn4_PhysicalMgmt);
		FUNC0(vp);
		FUNC1(vp, MDIO_DATA_WRITE1 | MDIO_SHIFT_CLK,
			       4, Wn4_PhysicalMgmt);
		FUNC0(vp);
	}
}