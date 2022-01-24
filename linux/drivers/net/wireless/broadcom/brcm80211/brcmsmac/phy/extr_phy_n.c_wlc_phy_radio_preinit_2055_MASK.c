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
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int RFCC_CHIP0_PU ; 
 int RFCC_OE_POR_FORCE ; 
 int RFCC_POR_FORCE ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC2(struct brcms_phy *pi)
{

	FUNC0(pi, 0x78, ~RFCC_POR_FORCE);
	FUNC1(pi, 0x78, RFCC_CHIP0_PU | RFCC_OE_POR_FORCE);

	FUNC1(pi, 0x78, RFCC_POR_FORCE);
}