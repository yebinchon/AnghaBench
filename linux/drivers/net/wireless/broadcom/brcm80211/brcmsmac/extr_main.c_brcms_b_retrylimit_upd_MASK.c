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
typedef  void* u16 ;
struct brcms_hardware {int SRL; int LRL; int /*<<< orphan*/  d11core; scalar_t__ up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OBJADDR_SCR_SEL ; 
 int S_DOT11_LRC_LMT ; 
 int S_DOT11_SRC_LMT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  objaddr ; 
 int /*<<< orphan*/  objdata ; 

__attribute__((used)) static void FUNC3(struct brcms_hardware *wlc_hw,
				   u16 SRL, u16 LRL)
{
	wlc_hw->SRL = SRL;
	wlc_hw->LRL = LRL;

	/* write retry limit to SCR, shouldn't need to suspend */
	if (wlc_hw->up) {
		FUNC2(wlc_hw->d11core, FUNC0(objaddr),
			     OBJADDR_SCR_SEL | S_DOT11_SRC_LMT);
		(void)FUNC1(wlc_hw->d11core, FUNC0(objaddr));
		FUNC2(wlc_hw->d11core, FUNC0(objdata), wlc_hw->SRL);
		FUNC2(wlc_hw->d11core, FUNC0(objaddr),
			     OBJADDR_SCR_SEL | S_DOT11_LRC_LMT);
		(void)FUNC1(wlc_hw->d11core, FUNC0(objaddr));
		FUNC2(wlc_hw->d11core, FUNC0(objdata), wlc_hw->LRL);
	}
}