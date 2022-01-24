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
struct RxDesc {int PSize; int status; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int RingEnd ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct RxDesc *desc)
{
	desc->PSize = 0x0;
	desc->addr = FUNC0(0xdeadbeef);
	desc->size &= FUNC0(RingEnd);
	FUNC1();
	desc->status = 0x0;
}