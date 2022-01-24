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
struct mvpp2_prs_entry {int* tcam; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int FUNC0 (unsigned int) ; 
 size_t FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned char) ; 

__attribute__((used)) static void FUNC3(struct mvpp2_prs_entry *pe,
					 unsigned int offs, unsigned char byte,
					 unsigned char enable)
{
	int pos = FUNC0(offs) * BITS_PER_BYTE;

	pe->tcam[FUNC1(offs)] &= ~(0xff << pos);
	pe->tcam[FUNC1(offs)] &= ~(FUNC2(0xff) << pos);
	pe->tcam[FUNC1(offs)] |= byte << pos;
	pe->tcam[FUNC1(offs)] |= FUNC2(enable << pos);
}