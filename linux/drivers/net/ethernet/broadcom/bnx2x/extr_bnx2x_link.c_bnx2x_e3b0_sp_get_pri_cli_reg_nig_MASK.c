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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int const,int const,int const,int) ; 

__attribute__((used)) static u64 FUNC1(const u8 cos, const u8 pri_set)
{
	/* MCP Dbg0 and dbg1 are always with higher strict pri*/
	const u8 nig_cos_offset = 3;
	const u8 nig_pri_offset = 3;

	return FUNC0(cos, nig_cos_offset, pri_set,
		nig_pri_offset, 4);

}