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
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int,int*,int) ; 

__attribute__((used)) static inline u32 FUNC2(struct iwl_trans *trans, u32 addr)
{
	u32 value;

	if (FUNC0(FUNC1(trans, addr, &value, 1)))
		return 0xa5a5a5a5;

	return value;
}