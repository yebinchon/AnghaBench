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
typedef  int /*<<< orphan*/  u16 ;
struct wil_ring_dma_addr {void* addr_high; int /*<<< orphan*/  addr_low; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  void* __le16 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct wil_ring_dma_addr *addr,
					  __le16 *addr_high_high,
					  dma_addr_t pa)
{
	addr->addr_low = FUNC1(FUNC2(pa));
	addr->addr_high = FUNC0((u16)FUNC3(pa));
	*addr_high_high = FUNC0((u16)(FUNC3(pa) >> 16));
}