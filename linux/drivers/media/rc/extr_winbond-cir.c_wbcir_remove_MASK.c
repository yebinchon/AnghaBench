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
struct wbcir_data {scalar_t__ sbase; scalar_t__ ebase; scalar_t__ wbase; int /*<<< orphan*/  led; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct pnp_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHFUNC_IOMEM_LEN ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  SP_IOMEM_LEN ; 
 int /*<<< orphan*/  WAKEUP_IOMEM_LEN ; 
 int /*<<< orphan*/  WBCIR_IRQ_NONE ; 
 scalar_t__ WBCIR_REG_WCEIR_CTL ; 
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ; 
 scalar_t__ WBCIR_REG_WCEIR_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct wbcir_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wbcir_data* FUNC3 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pnp_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wbcir_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct pnp_dev *device)
{
	struct wbcir_data *data = FUNC3(device);

	/* Disable interrupts */
	FUNC9(data, WBCIR_IRQ_NONE);
	FUNC0(data->irq, device);

	/* Clear status bits NEC_REP, BUFF, MSG_END, MATCH */
	FUNC8(data->wbase + WBCIR_REG_WCEIR_STS, 0x17, 0x17);

	/* Clear CEIR_EN */
	FUNC8(data->wbase + WBCIR_REG_WCEIR_CTL, 0x00, 0x01);

	/* Clear BUFF_EN, END_EN, MATCH_EN */
	FUNC8(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);

	FUNC5(data->dev);

	FUNC2(&data->led);

	/* This is ok since &data->led isn't actually used */
	FUNC7(&data->led, LED_OFF);

	FUNC6(data->wbase, WAKEUP_IOMEM_LEN);
	FUNC6(data->ebase, EHFUNC_IOMEM_LEN);
	FUNC6(data->sbase, SP_IOMEM_LEN);

	FUNC1(data);

	FUNC4(device, NULL);
}