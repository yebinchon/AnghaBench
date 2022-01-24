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
struct bgx {int lmac_count; } ;

/* Variables and functions */
 struct bgx* FUNC0 (int,int) ; 

int FUNC1(int node, int bgx_idx)
{
	struct bgx *bgx;

	bgx = FUNC0(node, bgx_idx);
	if (bgx)
		return bgx->lmac_count;

	return 0;
}