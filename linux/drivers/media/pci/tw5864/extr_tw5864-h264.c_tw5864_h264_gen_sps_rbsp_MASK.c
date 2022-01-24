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
typedef  int /*<<< orphan*/  u8 ;
struct bs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_GOP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bs*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (struct bs*) ; 
 int /*<<< orphan*/  FUNC2 (struct bs*) ; 
 int /*<<< orphan*/  FUNC3 (struct bs*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bs*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(u8 *buf, size_t size, int width, int height)
{
	struct bs bs, *s;

	s = &bs;
	FUNC0(s, buf, size);
	FUNC3(s, 8, 0x42); /* profile_idc, baseline */
	FUNC3(s, 1, 1); /* constraint_set0_flag */
	FUNC3(s, 1, 1); /* constraint_set1_flag */
	FUNC3(s, 1, 0); /* constraint_set2_flag */
	FUNC3(s, 5, 0); /* reserved_zero_5bits */
	FUNC3(s, 8, 0x1e); /* level_idc */
	FUNC4(s, 0); /* seq_parameter_set_id */
	FUNC4(s, FUNC5(MAX_GOP_SIZE) - 4); /* log2_max_frame_num_minus4 */
	FUNC4(s, 0); /* pic_order_cnt_type */
	/* log2_max_pic_order_cnt_lsb_minus4 */
	FUNC4(s, FUNC5(MAX_GOP_SIZE) - 4);
	FUNC4(s, 1); /* num_ref_frames */
	FUNC3(s, 1, 0); /* gaps_in_frame_num_value_allowed_flag */
	FUNC4(s, width / 16 - 1); /* pic_width_in_mbs_minus1 */
	FUNC4(s, height / 16 - 1); /* pic_height_in_map_units_minus1 */
	FUNC3(s, 1, 1); /* frame_mbs_only_flag */
	FUNC3(s, 1, 0); /* direct_8x8_inference_flag */
	FUNC3(s, 1, 0); /* frame_cropping_flag */
	FUNC3(s, 1, 0); /* vui_parameters_present_flag */
	FUNC2(s);
	return FUNC1(s);
}