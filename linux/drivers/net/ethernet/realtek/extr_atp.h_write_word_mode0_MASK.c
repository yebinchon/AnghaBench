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

/* Variables and functions */
 scalar_t__ PAR_DATA ; 
 int /*<<< orphan*/  FUNC0 (unsigned short,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(short ioaddr, unsigned short value)
{
	FUNC0(value & 0x0f, ioaddr + PAR_DATA);
	value >>= 4;
	FUNC0((value & 0x0f) | 0x10, ioaddr + PAR_DATA);
	value >>= 4;
	FUNC0(value & 0x0f, ioaddr + PAR_DATA);
	value >>= 4;
	FUNC0((value & 0x0f) | 0x10, ioaddr + PAR_DATA);
}