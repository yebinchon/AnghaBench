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
 scalar_t__ VFE_0_MODULE_CFG ; 
 int VFE_0_MODULE_CFG_CHROMA_UPSAMPLE ; 
 int VFE_0_MODULE_CFG_CROP_ENC ; 
 int VFE_0_MODULE_CFG_DEMUX ; 
 int VFE_0_MODULE_CFG_SCALE_ENC ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct vfe_device *vfe, u8 enable)
{
	u32 val = VFE_0_MODULE_CFG_DEMUX |
		  VFE_0_MODULE_CFG_CHROMA_UPSAMPLE |
		  VFE_0_MODULE_CFG_SCALE_ENC |
		  VFE_0_MODULE_CFG_CROP_ENC;

	if (enable)
		FUNC0(val, vfe->base + VFE_0_MODULE_CFG);
	else
		FUNC0(0x0, vfe->base + VFE_0_MODULE_CFG);
}