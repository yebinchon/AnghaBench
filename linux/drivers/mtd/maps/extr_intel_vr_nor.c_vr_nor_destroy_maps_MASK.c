#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ virt; } ;
struct vr_nor_mtd {scalar_t__ csr_base; TYPE_1__ map; } ;

/* Variables and functions */
 scalar_t__ EXP_TIMING_CS0 ; 
 unsigned int TIMING_WR_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct vr_nor_mtd *p)
{
	unsigned int exp_timing_cs0;

	/* write-protect the flash bank */
	exp_timing_cs0 = FUNC1(p->csr_base + EXP_TIMING_CS0);
	exp_timing_cs0 &= ~TIMING_WR_EN;
	FUNC2(exp_timing_cs0, p->csr_base + EXP_TIMING_CS0);

	/* unmap the flash window */
	FUNC0(p->map.virt);

	/* unmap the csr window */
	FUNC0(p->csr_base);
}