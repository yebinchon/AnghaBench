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
struct gve_rx_slot_page_info {int page_offset; } ;
struct gve_rx_data_slot {int /*<<< orphan*/  qpl_offset; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct gve_rx_slot_page_info *page_info,
			     struct gve_rx_data_slot *data_ring)
{
	u64 addr = FUNC0(data_ring->qpl_offset);

	page_info->page_offset ^= PAGE_SIZE / 2;
	addr ^= PAGE_SIZE / 2;
	data_ring->qpl_offset = FUNC1(addr);
}