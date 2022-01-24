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
typedef  int u16 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
typedef  enum immed_shift { ____Placeholder_immed_shift } immed_shift ;

/* Variables and functions */
 int IMMED_SHIFT_0B ; 
 int IMMED_SHIFT_2B ; 
 int /*<<< orphan*/  IMMED_WIDTH_ALL ; 
 int /*<<< orphan*/  IMMED_WIDTH_WORD ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int,int*,int*) ; 

__attribute__((used)) static void FUNC2(struct nfp_prog *nfp_prog, swreg dst, u32 imm)
{
	enum immed_shift shift;
	u16 val;

	if (FUNC1(imm, &val, &shift)) {
		FUNC0(nfp_prog, dst, val, IMMED_WIDTH_ALL, false, shift);
	} else if (FUNC1(~imm, &val, &shift)) {
		FUNC0(nfp_prog, dst, val, IMMED_WIDTH_ALL, true, shift);
	} else {
		FUNC0(nfp_prog, dst, imm & 0xffff, IMMED_WIDTH_ALL,
			   false, IMMED_SHIFT_0B);
		FUNC0(nfp_prog, dst, imm >> 16, IMMED_WIDTH_WORD,
			   false, IMMED_SHIFT_2B);
	}
}