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
struct enic {TYPE_1__* cq; } ;
struct TYPE_2__ {unsigned int interrupt_offset; } ;

/* Variables and functions */
 size_t FUNC0 (struct enic*,unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC1(struct enic *enic,
	unsigned int wq)
{
	return enic->cq[FUNC0(enic, wq)].interrupt_offset;
}