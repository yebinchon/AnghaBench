#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  quality; } ;
struct TYPE_4__ {scalar_t__ mchip_mmregs; TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ MCHIP_VRJ_TABLE_DATA ; 
 int /*<<< orphan*/ * FUNC0 (int*) ; 
 int /*<<< orphan*/ * FUNC1 (int*,int /*<<< orphan*/ ) ; 
 TYPE_2__ meye ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
	int i;
	int length;
	u16 *tables;

	tables = FUNC0(&length);
	for (i = 0; i < length; i++)
		FUNC2(tables[i], meye.mchip_mmregs + MCHIP_VRJ_TABLE_DATA);

	tables = FUNC1(&length, meye.params.quality);
	for (i = 0; i < length; i++)
		FUNC2(tables[i], meye.mchip_mmregs + MCHIP_VRJ_TABLE_DATA);
}