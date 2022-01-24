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
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int) ; 

void FUNC2(struct brcms_phy *pi, u16 addr, u16 val)
{
	u16 rval;

	rval = FUNC0(pi, addr);
	FUNC1(pi, addr, (rval | val));
}