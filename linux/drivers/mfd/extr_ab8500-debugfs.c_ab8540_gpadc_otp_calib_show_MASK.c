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
typedef  int /*<<< orphan*/  u16 ;
struct seq_file {int dummy; } ;
struct ab8500_gpadc {int dummy; } ;

/* Variables and functions */
 struct ab8500_gpadc* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ab8500_gpadc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *p)
{
	struct ab8500_gpadc *gpadc;
	u16 vmain_l, vmain_h, btemp_l, btemp_h;
	u16 vbat_l, vbat_h, ibat_l, ibat_h;

	gpadc = FUNC0("ab8500-gpadc.0");
	FUNC1(gpadc, &vmain_l, &vmain_h, &btemp_l, &btemp_h,
			&vbat_l, &vbat_h, &ibat_l, &ibat_h);
	FUNC2(s,
		   "VMAIN_L:0x%X\n"
		   "VMAIN_H:0x%X\n"
		   "BTEMP_L:0x%X\n"
		   "BTEMP_H:0x%X\n"
		   "VBAT_L:0x%X\n"
		   "VBAT_H:0x%X\n"
		   "IBAT_L:0x%X\n"
		   "IBAT_H:0x%X\n",
		   vmain_l, vmain_h, btemp_l, btemp_h,
		   vbat_l, vbat_h, ibat_l, ibat_h);

	return 0;
}