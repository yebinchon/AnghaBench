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
typedef  int u64 ;
typedef  int u32 ;
struct ivtv {int* last_dec_timing; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  decoding; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_DEC_GET_TIMING_INFO ; 
 int CX2341X_MBOX_MAX_DATA ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IVTV_F_I_VALID_DEC_TIMINGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ivtv*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct ivtv *itv, s64 *pts, s64 *frame)
{
	u32 data[CX2341X_MBOX_MAX_DATA];

	if (FUNC5(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags)) {
		*pts = (s64)((u64)itv->last_dec_timing[2] << 32) |
			(u64)itv->last_dec_timing[1];
		*frame = itv->last_dec_timing[0];
		return 0;
	}
	*pts = 0;
	*frame = 0;
	if (FUNC1(&itv->decoding)) {
		if (FUNC2(itv, CX2341X_DEC_GET_TIMING_INFO, 5, data)) {
			FUNC0("GET_TIMING: couldn't read clock\n");
			return -EIO;
		}
		FUNC3(itv->last_dec_timing, data, sizeof(itv->last_dec_timing));
		FUNC4(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags);
		*pts = (s64)((u64) data[2] << 32) | (u64) data[1];
		*frame = data[0];
		/*timing->scr = (u64) (((u64) data[4] << 32) | (u64) (data[3]));*/
	}
	return 0;
}