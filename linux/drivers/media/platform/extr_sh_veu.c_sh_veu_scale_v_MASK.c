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
struct sh_veu_dev {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int,int) ; 
 int /*<<< orphan*/  VEU_RFCR ; 
 int /*<<< orphan*/  VEU_RFSR ; 
 int /*<<< orphan*/  FUNC1 (struct sh_veu_dev*,int,int,int,int*,int*,int*) ; 
 int FUNC2 (struct sh_veu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_veu_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned long FUNC4(struct sh_veu_dev *veu,
				    int size_in, int size_out, int crop_out)
{
	u32 mant, frac, value, rep;

	FUNC1(veu, size_in, size_out, crop_out, &mant, &frac, &rep);

	/* set scale */
	value = (FUNC2(veu, VEU_RFCR) & ~0xffff0000) |
		(((mant << 12) | frac) << 16);

	FUNC3(veu, VEU_RFCR, value);

	/* set clip */
	value = (FUNC2(veu, VEU_RFSR) & ~0xffff0000) |
		(((rep << 12) | crop_out) << 16);

	FUNC3(veu, VEU_RFSR, value);

	return FUNC0((size_in * crop_out) / size_out, 4);
}