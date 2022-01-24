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
 int /*<<< orphan*/  FUNC0 (struct bs*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (struct bs*) ; 
 int /*<<< orphan*/  FUNC2 (struct bs*) ; 
 int /*<<< orphan*/  FUNC3 (struct bs*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bs*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bs*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(u8 *buf, size_t size, int qp)
{
	struct bs bs, *s;

	s = &bs;
	FUNC0(s, buf, size);
	FUNC5(s, 0); /* pic_parameter_set_id */
	FUNC5(s, 0); /* seq_parameter_set_id */
	FUNC3(s, 1, 0); /* entropy_coding_mode_flag */
	FUNC3(s, 1, 0); /* pic_order_present_flag */
	FUNC5(s, 0); /* num_slice_groups_minus1 */
	FUNC5(s, 0); /* i_num_ref_idx_l0_active_minus1 */
	FUNC5(s, 0); /* i_num_ref_idx_l1_active_minus1 */
	FUNC3(s, 1, 0); /* weighted_pred_flag */
	FUNC3(s, 2, 0); /* weighted_bipred_idc */
	FUNC4(s, qp - 26); /* pic_init_qp_minus26 */
	FUNC4(s, qp - 26); /* pic_init_qs_minus26 */
	FUNC4(s, 0); /* chroma_qp_index_offset */
	FUNC3(s, 1, 0); /* deblocking_filter_control_present_flag */
	FUNC3(s, 1, 0); /* constrained_intra_pred_flag */
	FUNC3(s, 1, 0); /* redundant_pic_cnt_present_flag */
	FUNC2(s);
	return FUNC1(s);
}