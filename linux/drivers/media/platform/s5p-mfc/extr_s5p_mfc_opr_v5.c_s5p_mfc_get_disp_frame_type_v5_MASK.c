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
struct s5p_mfc_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_PIC_FRAME_TYPE ; 
 int S5P_FIMV_DECODE_FRAME_MASK ; 
 int S5P_FIMV_SHARED_DISP_FRAME_TYPE_SHIFT ; 
 int FUNC0 (struct s5p_mfc_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct s5p_mfc_ctx *ctx)
{
	return (FUNC0(ctx, DISP_PIC_FRAME_TYPE) >>
			S5P_FIMV_SHARED_DISP_FRAME_TYPE_SHIFT) &
			S5P_FIMV_DECODE_FRAME_MASK;
}