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
struct bs {int bits_left; int* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_GOP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bs*,int*,size_t) ; 
 int FUNC1 (struct bs*) ; 
 int /*<<< orphan*/  FUNC2 (struct bs*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct bs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bs*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(u8 *buf, size_t size,
				      unsigned int idr_pic_id,
				      unsigned int frame_gop_seqno,
				      int *tail_nb_bits, u8 *tail)
{
	struct bs bs, *s;
	int is_i_frame = frame_gop_seqno == 0;

	s = &bs;
	FUNC0(s, buf, size);
	FUNC5(s, 0); /* first_mb_in_slice */
	FUNC5(s, is_i_frame ? 2 : 5); /* slice_type - I or P */
	FUNC5(s, 0); /* pic_parameter_set_id */
	FUNC2(s, FUNC6(MAX_GOP_SIZE), frame_gop_seqno); /* frame_num */
	if (is_i_frame)
		FUNC5(s, idr_pic_id);

	/* pic_order_cnt_lsb */
	FUNC2(s, FUNC6(MAX_GOP_SIZE), frame_gop_seqno);

	if (is_i_frame) {
		FUNC3(s, 0); /* no_output_of_prior_pics_flag */
		FUNC3(s, 0); /* long_term_reference_flag */
	} else {
		FUNC3(s, 0); /* num_ref_idx_active_override_flag */
		FUNC3(s, 0); /* ref_pic_list_reordering_flag_l0 */
		FUNC3(s, 0); /* adaptive_ref_pic_marking_mode_flag */
	}

	FUNC4(s, 0); /* slice_qp_delta */

	if (s->bits_left != 8) {
		*tail = ((s->ptr[0]) << s->bits_left);
		*tail_nb_bits = 8 - s->bits_left;
	} else {
		*tail = 0;
		*tail_nb_bits = 0;
	}

	return FUNC1(s);
}