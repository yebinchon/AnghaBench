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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  ddb_wq ; 
 int dma_buf_num ; 
 int dma_buf_size ; 

int FUNC3(void)
{
	if (dma_buf_num < 8)
		dma_buf_num = 8;
	if (dma_buf_num > 32)
		dma_buf_num = 32;
	if (dma_buf_size < 1)
		dma_buf_size = 1;
	if (dma_buf_size > 43)
		dma_buf_size = 43;

	if (FUNC1() < 0)
		return -1;
	ddb_wq = FUNC0("ddbridge", 0, 0);
	if (!ddb_wq)
		return FUNC2(1, -1);

	return 0;
}