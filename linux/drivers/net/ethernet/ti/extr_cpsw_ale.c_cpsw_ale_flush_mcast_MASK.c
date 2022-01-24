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
struct cpsw_ale {int /*<<< orphan*/  port_mask_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_TYPE_FREE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cpsw_ale *ale, u32 *ale_entry,
				 int port_mask)
{
	int mask;

	mask = FUNC0(ale_entry,
				      ale->port_mask_bits);
	if ((mask & port_mask) == 0)
		return; /* ports dont intersect, not interested */
	mask &= ~port_mask;

	/* free if only remaining port is host port */
	if (mask)
		FUNC2(ale_entry, mask,
				       ale->port_mask_bits);
	else
		FUNC1(ale_entry, ALE_TYPE_FREE);
}