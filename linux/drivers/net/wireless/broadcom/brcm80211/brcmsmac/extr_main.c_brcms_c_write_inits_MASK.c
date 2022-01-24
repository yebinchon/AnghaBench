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
typedef  void* uint ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct d11init {scalar_t__ addr; scalar_t__ size; int /*<<< orphan*/  value; } ;
struct brcms_hardware {int /*<<< orphan*/  unit; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcma_device*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_device*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct brcms_hardware *wlc_hw,
				const struct d11init *inits)
{
	struct bcma_device *core = wlc_hw->d11core;
	int i;
	uint offset;
	u16 size;
	u32 value;

	FUNC2(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);

	for (i = 0; inits[i].addr != FUNC3(0xffff); i++) {
		size = FUNC4(inits[i].size);
		offset = FUNC4(inits[i].addr);
		value = FUNC5(inits[i].value);
		if (size == 2)
			FUNC0(core, offset, value);
		else if (size == 4)
			FUNC1(core, offset, value);
		else
			break;
	}
}