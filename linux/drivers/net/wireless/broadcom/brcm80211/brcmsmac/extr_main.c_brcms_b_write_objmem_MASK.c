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
typedef  int uint ;
typedef  int u32 ;
typedef  int u16 ;
struct brcms_hardware {struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_device*,int,int) ; 
 int /*<<< orphan*/  objaddr ; 
 int /*<<< orphan*/  objdata ; 

__attribute__((used)) static void
FUNC4(struct brcms_hardware *wlc_hw, uint offset, u16 v,
		     u32 sel)
{
	struct bcma_device *core = wlc_hw->d11core;
	u16 objoff = FUNC0(objdata);

	FUNC3(core, FUNC0(objaddr), sel | (offset >> 2));
	(void)FUNC1(core, FUNC0(objaddr));
	if (offset & 2)
		objoff += 2;

	FUNC2(core, objoff, v);
}