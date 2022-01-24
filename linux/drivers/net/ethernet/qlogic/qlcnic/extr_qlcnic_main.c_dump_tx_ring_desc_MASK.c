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
struct qlcnic_host_tx_ring {int num_desc; int /*<<< orphan*/ * desc_head; } ;
struct cmd_desc_type0 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct qlcnic_host_tx_ring *tx_ring)
{
	int i;

	for (i = 0; i < tx_ring->num_desc; i++) {
		FUNC0("TX Desc: %d\n", i);
		FUNC1(KERN_INFO, "TX: ", DUMP_PREFIX_OFFSET, 16, 1,
			       &tx_ring->desc_head[i],
			       sizeof(struct cmd_desc_type0), true);
	}
}