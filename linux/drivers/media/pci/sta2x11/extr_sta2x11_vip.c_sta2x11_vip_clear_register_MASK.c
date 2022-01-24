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
 int /*<<< orphan*/  DVP_ITM ; 
 int /*<<< orphan*/  DVP_ITS ; 
 int /*<<< orphan*/  FUNC0 (struct sta2x11_vip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sta2x11_vip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sta2x11_vip *vip)
{
	FUNC2(&vip->slock);
	/* Disable interrupt */
	FUNC1(vip, DVP_ITM, 0);
	/* Reset VIP Control */
	FUNC1(vip, DVP_CTL, DVP_CTL_RST);
	/* Clear VIP Control */
	FUNC1(vip, DVP_CTL, 0);
	/* Clean VIP Interrupt */
	FUNC0(vip, DVP_ITS);
	FUNC3(&vip->slock);
}