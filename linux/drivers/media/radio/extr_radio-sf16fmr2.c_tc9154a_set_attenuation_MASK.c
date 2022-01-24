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
typedef  int u8 ;
typedef  int u32 ;
struct fmr2 {int dummy; } ;

/* Variables and functions */
 int PT_CK ; 
 int PT_DATA ; 
 int PT_ST ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fmr2*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct fmr2 *fmr2, int att, u32 channel)
{
	int i;
	u32 reg;
	u8 bit;

	reg = FUNC0(att / 10) | FUNC1((att % 10) / 2);
	reg |= channel;
	/* write 18-bit shift register, LSB first */
	for (i = 0; i < 18; i++) {
		bit = reg & (1 << i) ? PT_DATA : 0;
		FUNC2(fmr2, bit);
		FUNC3(5);
		FUNC2(fmr2, bit | PT_CK);
		FUNC3(5);
		FUNC2(fmr2, bit);
	}

	/* latch register data */
	FUNC3(5);
	FUNC2(fmr2, PT_ST);
	FUNC3(5);
	FUNC2(fmr2, 0);
}