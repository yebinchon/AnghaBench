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
struct stmfx {scalar_t__ vdd; int /*<<< orphan*/  map; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMFX_REG_IRQ_SRC_EN ; 
 int /*<<< orphan*/  STMFX_REG_SYS_CTRL ; 
 struct stmfx* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct stmfx *stmfx = FUNC0(client);

	FUNC1(stmfx->map, STMFX_REG_IRQ_SRC_EN, 0);
	FUNC1(stmfx->map, STMFX_REG_SYS_CTRL, 0);

	if (stmfx->vdd)
		return FUNC2(stmfx->vdd);

	return 0;
}