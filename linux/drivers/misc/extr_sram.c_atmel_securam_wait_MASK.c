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
typedef  int u32 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_SECUMOD_RAMRDY ; 
 int AT91_SECUMOD_RAMRDY_READY ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,int,int,int,int) ; 
 struct regmap* FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
	struct regmap *regmap;
	u32 val;

	regmap = FUNC2("atmel,sama5d2-secumod");
	if (FUNC0(regmap))
		return -ENODEV;

	return FUNC1(regmap, AT91_SECUMOD_RAMRDY, val,
					val & AT91_SECUMOD_RAMRDY_READY,
					10000, 500000);
}