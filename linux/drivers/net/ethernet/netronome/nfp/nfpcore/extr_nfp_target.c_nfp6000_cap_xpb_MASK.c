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
 int NFP_CPP_ACTION_RW ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P32 ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(u32 cpp_id)
{
	switch (cpp_id & FUNC1(0, ~0, ~0)) {
	FUNC0(0, 1,   0, P32); /* RingGet */
	FUNC0(0, 2, P32,   0); /* Interthread Signal */
	FUNC0(1, 1, P32,   0); /* RingPut */
	FUNC0(1, 2, P32,   0); /* CTNNWr */
	FUNC0(2, 0,   0, P32); /* ReflectRd, signal none */
	FUNC0(2, 1,   0, P32); /* ReflectRd, signal self */
	FUNC0(2, 2,   0, P32); /* ReflectRd, signal remote */
	FUNC0(2, 3,   0, P32); /* ReflectRd, signal both */
	FUNC0(3, 0, P32,   0); /* ReflectWr, signal none */
	FUNC0(3, 1, P32,   0); /* ReflectWr, signal self */
	FUNC0(3, 2, P32,   0); /* ReflectWr, signal remote */
	FUNC0(3, 3, P32,   0); /* ReflectWr, signal both */
	FUNC0(NFP_CPP_ACTION_RW, 1, P32, P32);
	default:
		return FUNC2(cpp_id, P32, 1, 63);
	}
}