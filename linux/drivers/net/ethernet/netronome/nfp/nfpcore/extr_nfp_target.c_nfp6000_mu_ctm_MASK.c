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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P32 ; 
 int /*<<< orphan*/  P64 ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(u32 cpp_id)
{
	switch (cpp_id & FUNC1(0, ~0, ~0)) {
	FUNC0(16, 1,   0, P32);	/* packet_read_packet_status */
	FUNC0(17, 1,   0, P32);	/* packet_credit_get */
	FUNC0(17, 3,   0, P64);	/* packet_add_thread */
	FUNC0(18, 2,   0, P64);	/* packet_free_and_return_pointer */
	FUNC0(18, 3,   0, P64);	/* packet_return_pointer */
	FUNC0(21, 0,   0, P64);	/* pe_dma_to_memory_indirect */
	FUNC0(21, 1,   0, P64);	/* pe_dma_to_memory_indirect_swap */
	FUNC0(21, 2,   0, P64);	/* pe_dma_to_memory_indirect_free */
	FUNC0(21, 3,   0, P64);	/* pe_dma_to_memory_indirect_free_swap */
	default:
		return FUNC2(cpp_id);
	}
}