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
struct stmfx {int /*<<< orphan*/  irq_domain; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int STMFX_REG_IRQ_SRC_MAX ; 
 struct stmfx* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	struct stmfx *stmfx = FUNC0(client);
	int hwirq;

	for (hwirq = 0; hwirq < STMFX_REG_IRQ_SRC_MAX; hwirq++)
		FUNC1(FUNC3(stmfx->irq_domain, hwirq));

	FUNC2(stmfx->irq_domain);
}