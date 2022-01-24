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
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_LED_REG ; 
 int /*<<< orphan*/  CSR_LED_REG_TRUN_ON ; 
 int /*<<< orphan*/  FUNC0 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct il_priv *il)
{
	FUNC0(il, CSR_LED_REG, CSR_LED_REG_TRUN_ON);
}