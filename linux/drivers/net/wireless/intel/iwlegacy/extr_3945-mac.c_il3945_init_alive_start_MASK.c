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
struct TYPE_2__ {scalar_t__ is_valid; } ;
struct il_priv {int /*<<< orphan*/  restart; int /*<<< orphan*/  workqueue; TYPE_1__ card_alive_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ UCODE_VALID_OK ; 
 scalar_t__ FUNC1 (struct il_priv*) ; 
 scalar_t__ FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct il_priv *il)
{
	/* Check alive response for "valid" sign from uCode */
	if (il->card_alive_init.is_valid != UCODE_VALID_OK) {
		/* We had an error bringing up the hardware, so take it
		 * all the way back down so we can try again */
		FUNC0("Initialize Alive failed.\n");
		goto restart;
	}

	/* Bootstrap uCode has loaded initialize uCode ... verify inst image.
	 * This is a paranoid check, because we would not have gotten the
	 * "initialize" alive if code weren't properly loaded.  */
	if (FUNC2(il)) {
		/* Runtime instruction load was bad;
		 * take it all the way back down so we can try again */
		FUNC0("Bad \"initialize\" uCode load.\n");
		goto restart;
	}

	/* Send pointers to protocol/runtime uCode image ... init code will
	 * load and launch runtime uCode, which will send us another "Alive"
	 * notification. */
	FUNC0("Initialization Alive received.\n");
	if (FUNC1(il)) {
		/* Runtime instruction load won't happen;
		 * take it all the way back down so we can try again */
		FUNC0("Couldn't set up uCode pointers.\n");
		goto restart;
	}
	return;

restart:
	FUNC3(il->workqueue, &il->restart);
}