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
struct sta2x11_vip {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVP_CTL ; 
 int /*<<< orphan*/  DVP_CTL_RST ; 
 int /*<<< orphan*/  DVP_HLFLN ; 
 int /*<<< orphan*/  DVP_HLFLN_SD ; 
 int /*<<< orphan*/  DVP_ITS ; 
 int /*<<< orphan*/  FUNC0 (struct sta2x11_vip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sta2x11_vip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sta2x11_vip *vip)
{
	/* Register initialization */
	FUNC2(&vip->slock);
	/* Clean interrupt */
	FUNC0(vip, DVP_ITS);
	/* Enable Half Line per vertical */
	FUNC1(vip, DVP_HLFLN, DVP_HLFLN_SD);
	/* Reset VIP control */
	FUNC1(vip, DVP_CTL, DVP_CTL_RST);
	/* Clear VIP control */
	FUNC1(vip, DVP_CTL, 0);
	FUNC3(&vip->slock);
}