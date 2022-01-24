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
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(u32 cpp_id)
{
	switch (cpp_id & FUNC1(0, ~0, ~0)) {
	FUNC0(0, 3, P32,  0); /* xor */
	FUNC0(2, 0, P32,  0); /* set */
	FUNC0(2, 1, P32,  0); /* clr */
	FUNC0(4, 0, P32,  0); /* add */
	FUNC0(4, 1, P32,  0); /* add64 */
	FUNC0(6, 0, P32,  0); /* sub */
	FUNC0(6, 1, P32,  0); /* sub64 */
	FUNC0(6, 2, P32,  0); /* subsat */
	FUNC0(8, 2, P32,  0); /* hash_mask */
	FUNC0(8, 3, P32,  0); /* hash_clear */
	FUNC0(9, 0,  0, P32); /* ring_get */
	FUNC0(9, 1,  0, P32); /* ring_pop */
	FUNC0(9, 2,  0, P32); /* ring_get_freely */
	FUNC0(9, 3,  0, P32); /* ring_pop_freely */
	FUNC0(10, 0, P32,  0); /* ring_put */
	FUNC0(10, 2, P32,  0); /* ring_journal */
	FUNC0(14, 0,  P32, 0); /* reflect_write_sig_local */
	FUNC0(15, 1,  0, P32); /* reflect_read_sig_local */
	FUNC0(17, 2, P32,  0); /* statisic */
	FUNC0(24, 0,  0, P32); /* ring_read */
	FUNC0(24, 1, P32,  0); /* ring_write */
	FUNC0(25, 0,  0, P32); /* ring_workq_add_thread */
	FUNC0(25, 1, P32,  0); /* ring_workq_add_work */
	default:
		return FUNC2(cpp_id, P32, 0, 64);
	}
}