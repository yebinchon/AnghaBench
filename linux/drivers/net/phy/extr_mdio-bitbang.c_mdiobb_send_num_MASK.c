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
typedef  int u16 ;
struct mdiobb_ctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mdiobb_ctrl*,int) ; 

__attribute__((used)) static void FUNC1(struct mdiobb_ctrl *ctrl, u16 val, int bits)
{
	int i;

	for (i = bits - 1; i >= 0; i--)
		FUNC0(ctrl, (val >> i) & 1);
}