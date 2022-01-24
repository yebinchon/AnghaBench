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
struct omap3isp_prev_rgbtorgb {int** matrix; int* offset; } ;
struct prev_params {struct omap3isp_prev_rgbtorgb rgb2rgb; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPPRV_RGB_MAT1 ; 
 int ISPPRV_RGB_MAT1_MTX_GR_SHIFT ; 
 int ISPPRV_RGB_MAT1_MTX_RR_SHIFT ; 
 int /*<<< orphan*/  ISPPRV_RGB_MAT2 ; 
 int ISPPRV_RGB_MAT2_MTX_BR_SHIFT ; 
 int ISPPRV_RGB_MAT2_MTX_RG_SHIFT ; 
 int /*<<< orphan*/  ISPPRV_RGB_MAT3 ; 
 int ISPPRV_RGB_MAT3_MTX_BG_SHIFT ; 
 int ISPPRV_RGB_MAT3_MTX_GG_SHIFT ; 
 int /*<<< orphan*/  ISPPRV_RGB_MAT4 ; 
 int ISPPRV_RGB_MAT4_MTX_GB_SHIFT ; 
 int ISPPRV_RGB_MAT4_MTX_RB_SHIFT ; 
 int /*<<< orphan*/  ISPPRV_RGB_MAT5 ; 
 int ISPPRV_RGB_MAT5_MTX_BB_SHIFT ; 
 int /*<<< orphan*/  ISPPRV_RGB_OFF1 ; 
 int ISPPRV_RGB_OFF1_MTX_OFFG_SHIFT ; 
 int ISPPRV_RGB_OFF1_MTX_OFFR_SHIFT ; 
 int /*<<< orphan*/  ISPPRV_RGB_OFF2 ; 
 int ISPPRV_RGB_OFF2_MTX_OFFB_SHIFT ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_PREV ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC1 (struct isp_prev_device*) ; 

__attribute__((used)) static void
FUNC2(struct isp_prev_device *prev,
			    const struct prev_params *params)
{
	struct isp_device *isp = FUNC1(prev);
	const struct omap3isp_prev_rgbtorgb *rgbrgb = &params->rgb2rgb;
	u32 val;

	val = (rgbrgb->matrix[0][0] & 0xfff) << ISPPRV_RGB_MAT1_MTX_RR_SHIFT;
	val |= (rgbrgb->matrix[0][1] & 0xfff) << ISPPRV_RGB_MAT1_MTX_GR_SHIFT;
	FUNC0(isp, val, OMAP3_ISP_IOMEM_PREV, ISPPRV_RGB_MAT1);

	val = (rgbrgb->matrix[0][2] & 0xfff) << ISPPRV_RGB_MAT2_MTX_BR_SHIFT;
	val |= (rgbrgb->matrix[1][0] & 0xfff) << ISPPRV_RGB_MAT2_MTX_RG_SHIFT;
	FUNC0(isp, val, OMAP3_ISP_IOMEM_PREV, ISPPRV_RGB_MAT2);

	val = (rgbrgb->matrix[1][1] & 0xfff) << ISPPRV_RGB_MAT3_MTX_GG_SHIFT;
	val |= (rgbrgb->matrix[1][2] & 0xfff) << ISPPRV_RGB_MAT3_MTX_BG_SHIFT;
	FUNC0(isp, val, OMAP3_ISP_IOMEM_PREV, ISPPRV_RGB_MAT3);

	val = (rgbrgb->matrix[2][0] & 0xfff) << ISPPRV_RGB_MAT4_MTX_RB_SHIFT;
	val |= (rgbrgb->matrix[2][1] & 0xfff) << ISPPRV_RGB_MAT4_MTX_GB_SHIFT;
	FUNC0(isp, val, OMAP3_ISP_IOMEM_PREV, ISPPRV_RGB_MAT4);

	val = (rgbrgb->matrix[2][2] & 0xfff) << ISPPRV_RGB_MAT5_MTX_BB_SHIFT;
	FUNC0(isp, val, OMAP3_ISP_IOMEM_PREV, ISPPRV_RGB_MAT5);

	val = (rgbrgb->offset[0] & 0x3ff) << ISPPRV_RGB_OFF1_MTX_OFFR_SHIFT;
	val |= (rgbrgb->offset[1] & 0x3ff) << ISPPRV_RGB_OFF1_MTX_OFFG_SHIFT;
	FUNC0(isp, val, OMAP3_ISP_IOMEM_PREV, ISPPRV_RGB_OFF1);

	val = (rgbrgb->offset[2] & 0x3ff) << ISPPRV_RGB_OFF2_MTX_OFFB_SHIFT;
	FUNC0(isp, val, OMAP3_ISP_IOMEM_PREV, ISPPRV_RGB_OFF2);
}