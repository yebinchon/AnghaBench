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
struct sun4i_csi {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ CSI_CPT_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct sun4i_csi *csi)
{
	FUNC0(0, csi->regs + CSI_CPT_CTRL_REG);
}