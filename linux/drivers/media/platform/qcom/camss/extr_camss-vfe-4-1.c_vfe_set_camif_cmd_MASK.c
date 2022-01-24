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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct vfe_device {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ VFE_0_CAMIF_CMD ; 
 int VFE_0_CAMIF_CMD_CLEAR_CAMIF_STATUS ; 
 int VFE_0_CAMIF_CMD_DISABLE_FRAME_BOUNDARY ; 
 int VFE_0_CAMIF_CMD_ENABLE_FRAME_BOUNDARY ; 
 int VFE_0_CAMIF_CMD_NO_CHANGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct vfe_device *vfe, u8 enable)
{
	u32 cmd;

	cmd = VFE_0_CAMIF_CMD_CLEAR_CAMIF_STATUS | VFE_0_CAMIF_CMD_NO_CHANGE;
	FUNC1(cmd, vfe->base + VFE_0_CAMIF_CMD);
	FUNC0();

	if (enable)
		cmd = VFE_0_CAMIF_CMD_ENABLE_FRAME_BOUNDARY;
	else
		cmd = VFE_0_CAMIF_CMD_DISABLE_FRAME_BOUNDARY;

	FUNC1(cmd, vfe->base + VFE_0_CAMIF_CMD);
}