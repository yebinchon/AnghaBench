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
struct stmpe {int /*<<< orphan*/  dev; int /*<<< orphan*/  vcc; int /*<<< orphan*/  vio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STMPE_BLOCK_ADC ; 
 int /*<<< orphan*/  FUNC1 (struct stmpe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct stmpe *stmpe)
{
	if (!FUNC0(stmpe->vio))
		FUNC3(stmpe->vio);
	if (!FUNC0(stmpe->vcc))
		FUNC3(stmpe->vcc);

	FUNC1(stmpe, STMPE_BLOCK_ADC);

	FUNC2(stmpe->dev);

	return 0;
}