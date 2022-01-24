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
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct if_sdio_packet {scalar_t__ model; struct if_sdio_packet* next; struct if_sdio_packet* packets; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  priv; } ;
struct if_sdio_card {scalar_t__ model; struct if_sdio_card* next; struct if_sdio_card* packets; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  priv; } ;
struct cmd_header {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FUNC_SHUTDOWN ; 
 scalar_t__ MODEL_8688 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmd_header*,int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_sdio_packet*) ; 
 int /*<<< orphan*/  lbs_cmd_copyback ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct if_sdio_packet* FUNC9 (struct sdio_func*) ; 
 scalar_t__ user_rmmod ; 

__attribute__((used)) static void FUNC10(struct sdio_func *func)
{
	struct if_sdio_card *card;
	struct if_sdio_packet *packet;

	card = FUNC9(func);

	/* Undo decrement done above in if_sdio_probe */
	FUNC7(&func->dev);

	if (user_rmmod && (card->model == MODEL_8688)) {
		/*
		 * FUNC_SHUTDOWN is required for SD8688 WLAN/BT
		 * multiple functions
		 */
		struct cmd_header cmd;

		FUNC6(&cmd, 0, sizeof(cmd));

		FUNC3("send function SHUTDOWN command\n");
		if (FUNC0(card->priv, CMD_FUNC_SHUTDOWN,
				&cmd, sizeof(cmd), lbs_cmd_copyback,
				(unsigned long) &cmd))
			FUNC8("CMD_FUNC_SHUTDOWN cmd failed\n");
	}


	FUNC3("call remove card\n");
	FUNC5(card->priv);
	FUNC4(card->priv);

	FUNC1(card->workqueue);

	while (card->packets) {
		packet = card->packets;
		card->packets = card->packets->next;
		FUNC2(packet);
	}

	FUNC2(card);
}