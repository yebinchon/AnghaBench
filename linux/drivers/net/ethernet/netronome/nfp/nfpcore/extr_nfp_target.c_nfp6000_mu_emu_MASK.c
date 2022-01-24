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
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(u32 cpp_id)
{
	switch (cpp_id & FUNC1(0, ~0, ~0)) {
	FUNC0(18, 0,   0, P32);	/* read_queue */
	FUNC0(18, 1,   0, P32);	/* read_queue_ring */
	FUNC0(18, 2, P32,   0);	/* write_queue */
	FUNC0(18, 3, P32,   0);	/* write_queue_ring */
	FUNC0(20, 2, P32,   0);	/* journal */
	FUNC0(21, 0,   0, P32);	/* get */
	FUNC0(21, 1,   0, P32);	/* get_eop */
	FUNC0(21, 2,   0, P32);	/* get_freely */
	FUNC0(22, 0,   0, P32);	/* pop */
	FUNC0(22, 1,   0, P32);	/* pop_eop */
	FUNC0(22, 2,   0, P32);	/* pop_freely */
	default:
		return FUNC2(cpp_id);
	}
}