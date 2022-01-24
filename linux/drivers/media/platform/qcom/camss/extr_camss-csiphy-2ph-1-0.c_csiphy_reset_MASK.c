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
struct csiphy_device {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CAMSS_CSI_PHY_GLBL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct csiphy_device *csiphy)
{
	FUNC1(0x1, csiphy->base + CAMSS_CSI_PHY_GLBL_RESET);
	FUNC0(5000, 8000);
	FUNC1(0x0, csiphy->base + CAMSS_CSI_PHY_GLBL_RESET);
}