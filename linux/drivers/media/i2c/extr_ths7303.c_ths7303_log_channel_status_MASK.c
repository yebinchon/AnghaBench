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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int* in_bias_sel_dis_cont_txt ; 
 int* in_mux_sel_txt ; 
 int* lpf_freq_sel_txt ; 
 int* stc_lpf_sel_txt ; 
 int FUNC0 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static void FUNC2(struct v4l2_subdev *sd, u8 reg)
{
	u8 val = FUNC0(sd, reg);

	if ((val & 0x7) == 0) {
		FUNC1(sd, "Channel %d Off\n", reg);
		return;
	}

	FUNC1(sd, "Channel %d On\n", reg);
	FUNC1(sd, "  value 0x%x\n", val);
	FUNC1(sd, "  %s\n", stc_lpf_sel_txt[(val >> 6) & 0x3]);
	FUNC1(sd, "  %s\n", in_mux_sel_txt[(val >> 5) & 0x1]);
	FUNC1(sd, "  %s\n", lpf_freq_sel_txt[(val >> 3) & 0x3]);
	FUNC1(sd, "  %s\n", in_bias_sel_dis_cont_txt[(val >> 0) & 0x7]);
}