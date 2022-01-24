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
typedef  int u32 ;
struct mvpp2_prs_entry {int* sram; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct mvpp2_prs_entry *pe, int bit_num,
				      u32 val)
{
	pe->sram[FUNC1(bit_num)] &= ~(val << (FUNC0(bit_num)));
}