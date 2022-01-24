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
typedef  int u32 ;
struct denali_controller {int /*<<< orphan*/  (* host_write ) (struct denali_controller*,int,int) ;} ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct denali_controller*) ; 
 int DENALI_MAP10 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct denali_controller*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct denali_controller*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct denali_controller*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct denali_controller *denali,
			       dma_addr_t dma_addr, int page, bool write)
{
	u32 mode;
	const int page_count = 1;

	mode = DENALI_MAP10 | FUNC1(denali) | page;

	/* DMA is a three step process */

	/*
	 * 1. setup transfer type, interrupt when complete,
	 *    burst len = 64 bytes, the number of pages
	 */
	denali->host_write(denali, mode,
			   0x01002000 | (64 << 16) |
			   (write ? FUNC0(8) : 0) | page_count);

	/* 2. set memory low address */
	denali->host_write(denali, mode, FUNC2(dma_addr));

	/* 3. set memory high address */
	denali->host_write(denali, mode, FUNC6(dma_addr));
}