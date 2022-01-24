#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sdio_func {int dummy; } ;
struct if_sdio_card {TYPE_1__* priv; int /*<<< orphan*/  func; } ;
struct TYPE_2__ {int is_activity_detected; } ;

/* Variables and functions */
 int IF_SDIO_H_INT_DNLD ; 
 int /*<<< orphan*/  IF_SDIO_H_INT_STATUS ; 
 int IF_SDIO_H_INT_UPLD ; 
 int FUNC0 (struct if_sdio_card*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct if_sdio_card* FUNC3 (struct sdio_func*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC6(struct sdio_func *func)
{
	int ret;
	struct if_sdio_card *card;
	u8 cause;

	card = FUNC3(func);

	cause = FUNC4(card->func, IF_SDIO_H_INT_STATUS, &ret);
	if (ret || !cause)
		return;

	FUNC1("interrupt: 0x%X\n", (unsigned)cause);

	FUNC5(card->func, ~cause, IF_SDIO_H_INT_STATUS, &ret);
	if (ret)
		return;

	/*
	 * Ignore the define name, this really means the card has
	 * successfully received the command.
	 */
	card->priv->is_activity_detected = 1;
	if (cause & IF_SDIO_H_INT_DNLD)
		FUNC2(card->priv);


	if (cause & IF_SDIO_H_INT_UPLD) {
		ret = FUNC0(card);
		if (ret)
			return;
	}
}