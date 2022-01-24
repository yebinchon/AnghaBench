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
typedef  size_t uint ;
typedef  int /*<<< orphan*/  u32 ;
struct brcms_hardware {int /*<<< orphan*/  unit; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OBJADDR_AUTO_INC ; 
 int OBJADDR_UCM_SEL ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  objaddr ; 
 int /*<<< orphan*/  objdata ; 

__attribute__((used)) static void FUNC5(struct brcms_hardware *wlc_hw,
			      const __le32 ucode[], const size_t nbytes)
{
	struct bcma_device *core = wlc_hw->d11core;
	uint i;
	uint count;

	FUNC3(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);

	count = (nbytes / sizeof(u32));

	FUNC2(core, FUNC0(objaddr),
		     OBJADDR_AUTO_INC | OBJADDR_UCM_SEL);
	(void)FUNC1(core, FUNC0(objaddr));
	for (i = 0; i < count; i++)
		FUNC2(core, FUNC0(objdata), FUNC4(ucode[i]));

}