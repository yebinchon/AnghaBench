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
typedef  int /*<<< orphan*/  u8 ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADIO_2064_REG089 ; 
 int /*<<< orphan*/  RADIO_2064_REG08A ; 
 int /*<<< orphan*/  RADIO_2064_REG08B ; 
 int /*<<< orphan*/  RADIO_2064_REG08C ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct brcms_phy *pi,
			  u8 *ei0, u8 *eq0, u8 *fi0, u8 *fq0)
{
	*ei0 = FUNC0(FUNC1(pi, RADIO_2064_REG089));
	*eq0 = FUNC0(FUNC1(pi, RADIO_2064_REG08A));
	*fi0 = FUNC0(FUNC1(pi, RADIO_2064_REG08B));
	*fq0 = FUNC0(FUNC1(pi, RADIO_2064_REG08C));
}