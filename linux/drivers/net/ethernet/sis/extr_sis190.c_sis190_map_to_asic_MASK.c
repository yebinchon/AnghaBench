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
struct RxDesc {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct RxDesc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct RxDesc *desc, dma_addr_t mapping,
				      u32 rx_buf_sz)
{
	desc->addr = FUNC0(mapping);
	FUNC1(desc, rx_buf_sz);
}