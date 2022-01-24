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
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_SHINE_DISABLE ; 
 int /*<<< orphan*/  LED_SHINE_MASK ; 
 int /*<<< orphan*/  OLT_LED_CTL ; 
 int FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct rtsx_pcr *pcr)
{
	return FUNC0(pcr, OLT_LED_CTL,
		LED_SHINE_MASK, LED_SHINE_DISABLE);
}