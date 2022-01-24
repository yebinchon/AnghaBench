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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int NFP_CPP_ACTION_RW ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P64 ; 

__attribute__((used)) static int FUNC2(u32 cpp_id)
{
	switch (cpp_id & FUNC1(0, ~0, ~0)) {
	FUNC0(0, 0,   0, P64);	/* ReadNbiTM */
	FUNC0(1, 0,   P64, 0);	/* WriteNbiTM */
	FUNC0(NFP_CPP_ACTION_RW, 0, P64, P64);
	default:
		return -EINVAL;
	}
}