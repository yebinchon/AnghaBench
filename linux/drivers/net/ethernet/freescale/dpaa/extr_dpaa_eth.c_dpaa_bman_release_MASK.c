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
struct dpaa_bp {int /*<<< orphan*/  (* free_buf_cb ) (struct dpaa_bp const*,struct bm_buffer*) ;int /*<<< orphan*/  pool; } ;
struct bm_buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct bm_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa_bp const*,struct bm_buffer*) ; 

__attribute__((used)) static int FUNC3(const struct dpaa_bp *dpaa_bp,
			     struct bm_buffer *bmb, int cnt)
{
	int err;

	err = FUNC1(dpaa_bp->pool, bmb, cnt);
	/* Should never occur, address anyway to avoid leaking the buffers */
	if (FUNC0(err) && dpaa_bp->free_buf_cb)
		while (cnt-- > 0)
			dpaa_bp->free_buf_cb(dpaa_bp, &bmb[cnt]);

	return cnt;
}