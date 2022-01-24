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
struct rcar_csi2 {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTERRSTATE_REG ; 
 int /*<<< orphan*/  INTSTATE_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_csi2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_csi2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct rcar_csi2 *priv = data;
	u32 status, err_status;

	status = FUNC1(priv, INTSTATE_REG);
	err_status = FUNC1(priv, INTERRSTATE_REG);

	if (!status)
		return IRQ_HANDLED;

	FUNC2(priv, INTSTATE_REG, status);

	if (!err_status)
		return IRQ_HANDLED;

	FUNC2(priv, INTERRSTATE_REG, err_status);

	FUNC0(priv->dev, "Transfer error, restarting CSI-2 receiver\n");

	return IRQ_WAKE_THREAD;
}