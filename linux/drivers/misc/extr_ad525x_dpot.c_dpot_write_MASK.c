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
typedef  int /*<<< orphan*/  u16 ;
struct dpot_data {int feat; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int F_SPI ; 
 int /*<<< orphan*/  FUNC0 (struct dpot_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpot_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC2(struct dpot_data *dpot, u8 reg, u16 value)
{
	if (dpot->feat & F_SPI)
		return FUNC1(dpot, reg, value);
	else
		return FUNC0(dpot, reg, value);
}