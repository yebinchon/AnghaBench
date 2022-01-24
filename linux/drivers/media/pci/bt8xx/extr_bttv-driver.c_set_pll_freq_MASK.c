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
struct bttv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_PLL_F_HI ; 
 int /*<<< orphan*/  BT848_PLL_F_LO ; 
 unsigned char BT848_PLL_X ; 
 int /*<<< orphan*/  BT848_PLL_XCI ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bttv *btv, unsigned int fin, unsigned int fout)
{
	unsigned char fl, fh, fi;

	/* prevent overflows */
	fin/=4;
	fout/=4;

	fout*=12;
	fi=fout/fin;

	fout=(fout%fin)*256;
	fh=fout/fin;

	fout=(fout%fin)*256;
	fl=fout/fin;

	FUNC0(fl, BT848_PLL_F_LO);
	FUNC0(fh, BT848_PLL_F_HI);
	FUNC0(fi|BT848_PLL_X, BT848_PLL_XCI);
}