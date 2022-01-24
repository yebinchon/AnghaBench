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
struct menelaus_vtg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct menelaus_vtg const*,unsigned int,int,int) ; 
 struct menelaus_vtg vdcdc2_vtg ; 
 struct menelaus_vtg vdcdc3_vtg ; 
 int /*<<< orphan*/  vdcdc_values ; 

int FUNC3(int dcdc, unsigned int mV)
{
	const struct menelaus_vtg *vtg;
	int val;

	if (dcdc != 2 && dcdc != 3)
		return -EINVAL;
	if (dcdc == 2)
		vtg = &vdcdc2_vtg;
	else
		vtg = &vdcdc3_vtg;

	if (mV == 0)
		return FUNC2(vtg, 0, 0, 0);

	val = FUNC1(mV, vdcdc_values,
				     FUNC0(vdcdc_values));
	if (val < 0)
		return -EINVAL;
	return FUNC2(vtg, mV, val, 0x03);
}