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
typedef  int u64 ;
typedef  int u32 ;
struct tg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TG3_EAV_REF_CLCK_CTL ; 
 int TG3_EAV_REF_CLCK_CTL_RESUME ; 
 int TG3_EAV_REF_CLCK_CTL_STOP ; 
 int /*<<< orphan*/  TG3_EAV_REF_CLCK_LSB ; 
 int /*<<< orphan*/  TG3_EAV_REF_CLCK_MSB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct tg3 *tp, u64 newval)
{
	u32 clock_ctl = FUNC0(TG3_EAV_REF_CLCK_CTL);

	FUNC1(TG3_EAV_REF_CLCK_CTL, clock_ctl | TG3_EAV_REF_CLCK_CTL_STOP);
	FUNC1(TG3_EAV_REF_CLCK_LSB, newval & 0xffffffff);
	FUNC1(TG3_EAV_REF_CLCK_MSB, newval >> 32);
	FUNC2(TG3_EAV_REF_CLCK_CTL, clock_ctl | TG3_EAV_REF_CLCK_CTL_RESUME);
}