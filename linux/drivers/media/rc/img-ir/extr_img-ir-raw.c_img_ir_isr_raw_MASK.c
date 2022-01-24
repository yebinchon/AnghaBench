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
typedef  int /*<<< orphan*/  u32 ;
struct img_ir_priv_raw {int /*<<< orphan*/  timer; int /*<<< orphan*/  rdev; } ;
struct img_ir_priv {struct img_ir_priv_raw raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHO_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct img_ir_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct img_ir_priv *priv, u32 irq_status)
{
	struct img_ir_priv_raw *raw = &priv->raw;

	/* check not removing */
	if (!raw->rdev)
		return;

	FUNC0(priv, irq_status);

	/* start / push back the echo timer */
	FUNC1(&raw->timer, jiffies + FUNC2(ECHO_TIMEOUT_MS));
}