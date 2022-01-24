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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_TYPE_ADDR ; 
 int /*<<< orphan*/  ALE_TYPE_VLAN_ADDR ; 
 int ALE_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(u32 *ale_entry,
						int flags, u16 vid)
{
	if (flags & ALE_VLAN) {
		FUNC0(ale_entry, ALE_TYPE_VLAN_ADDR);
		FUNC1(ale_entry, vid);
	} else {
		FUNC0(ale_entry, ALE_TYPE_ADDR);
	}
}