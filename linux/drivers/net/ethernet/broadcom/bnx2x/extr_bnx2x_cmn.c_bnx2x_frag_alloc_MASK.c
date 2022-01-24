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
struct bnx2x_fastpath {scalar_t__ rx_buf_size; scalar_t__ rx_frag_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ NET_SKB_PAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(const struct bnx2x_fastpath *fp, gfp_t gfp_mask)
{
	if (fp->rx_frag_size) {
		/* GFP_KERNEL allocations are used only during initialization */
		if (FUNC4(FUNC1(gfp_mask)))
			return (void *)FUNC0(gfp_mask);

		return FUNC3(fp->rx_frag_size);
	}

	return FUNC2(fp->rx_buf_size + NET_SKB_PAD, gfp_mask);
}