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
typedef  int u32 ;
struct vpe_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPE_CLK_ENABLE ; 
 int VPE_DATA_PATH_CLK_ENABLE ; 
 int VPE_VPEDMA_CLK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct vpe_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct vpe_dev *dev, bool on)
{
	u32 val = 0;

	if (on)
		val = VPE_DATA_PATH_CLK_ENABLE | VPE_VPEDMA_CLK_ENABLE;
	FUNC0(dev, VPE_CLK_ENABLE, val);
}