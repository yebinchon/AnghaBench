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
typedef  scalar_t__ u32 ;
struct hva_ctx_dbg {int is_valid_period; int window_duration; int cnt_window; scalar_t__ window_stream_size; void* max_bitrate; void* min_bitrate; scalar_t__ last_bitrate; int /*<<< orphan*/  cnt_period; int /*<<< orphan*/  total_period; void* max_period; void* min_period; int /*<<< orphan*/  begin; } ;
struct hva_ctx {struct hva_ctx_dbg dbg; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__,void*) ; 
 void* FUNC4 (scalar_t__,void*) ; 

void FUNC5(struct hva_ctx *ctx)
{
	u64 div;
	u32 period;
	u32 bitrate;
	struct hva_ctx_dbg *dbg = &ctx->dbg;
	ktime_t prev = dbg->begin;

	dbg->begin = FUNC1();

	if (dbg->is_valid_period) {
		/* encoding period */
		div = (u64)FUNC2(dbg->begin, prev);
		FUNC0(div, 100);
		period = (u32)div;
		dbg->min_period = FUNC4(period, dbg->min_period);
		dbg->max_period = FUNC3(period, dbg->max_period);
		dbg->total_period += period;
		dbg->cnt_period++;

		/*
		 * minimum and maximum bitrates are based on the
		 * encoding period values upon a window of 32 samples
		 */
		dbg->window_duration += period;
		dbg->cnt_window++;
		if (dbg->cnt_window >= 32) {
			/*
			 * bitrate in kbps = (size * 8 / 1000) /
			 *                   (duration / 10000)
			 *                 = size * 80 / duration
			 */
			if (dbg->window_duration > 0) {
				div = (u64)dbg->window_stream_size * 80;
				FUNC0(div, dbg->window_duration);
				bitrate = (u32)div;
				dbg->last_bitrate = bitrate;
				dbg->min_bitrate = FUNC4(bitrate,
						       dbg->min_bitrate);
				dbg->max_bitrate = FUNC3(bitrate,
						       dbg->max_bitrate);
			}
			dbg->window_stream_size = 0;
			dbg->window_duration = 0;
			dbg->cnt_window = 0;
		}
	}

	/*
	 * filter sequences valid for performance:
	 * - begin/begin (no stream available) is an invalid sequence
	 * - begin/end is a valid sequence
	 */
	dbg->is_valid_period = false;
}