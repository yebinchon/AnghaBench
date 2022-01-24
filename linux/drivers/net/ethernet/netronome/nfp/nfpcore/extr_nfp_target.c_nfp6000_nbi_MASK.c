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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(u32 cpp_id, u64 address)
{
	u64 rel_addr = address & 0x3fFFFF;

	if (rel_addr < (1 << 20))
		return FUNC0(cpp_id);
	if (rel_addr < (2 << 20))
		return FUNC2(cpp_id);
	if (rel_addr < (3 << 20))
		return FUNC3(cpp_id);
	return FUNC1(cpp_id);
}