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
typedef  scalar_t__ u32 ;
struct cmdQ_e {int addr_hi; int len_gen; int flags; scalar_t__ addr_lo; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int F_CMD_DATAVALID ; 
 unsigned int SGE_TX_DESC_MAX_PLEN ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static inline void FUNC5(struct cmdQ_e *e, dma_addr_t mapping,
				 unsigned int len, unsigned int gen,
				 unsigned int eop)
{
	FUNC0(len > SGE_TX_DESC_MAX_PLEN);

	e->addr_lo = (u32)mapping;
	e->addr_hi = (u64)mapping >> 32;
	e->len_gen = FUNC4(len) | FUNC2(gen);
	e->flags = F_CMD_DATAVALID | FUNC1(eop) | FUNC3(gen);
}