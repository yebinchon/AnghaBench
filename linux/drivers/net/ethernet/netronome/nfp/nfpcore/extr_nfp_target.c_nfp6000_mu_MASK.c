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

__attribute__((used)) static int FUNC3(u32 cpp_id, u64 address)
{
	int pp;

	if (address < 0x2000000000ULL)
		pp = FUNC0(cpp_id);
	else if (address < 0x8000000000ULL)
		pp = FUNC1(cpp_id);
	else if (address < 0x9800000000ULL)
		pp = FUNC0(cpp_id);
	else if (address < 0x9C00000000ULL)
		pp = FUNC1(cpp_id);
	else if (address < 0xA000000000ULL)
		pp = FUNC2(cpp_id);
	else
		pp = FUNC0(cpp_id);

	return pp;
}