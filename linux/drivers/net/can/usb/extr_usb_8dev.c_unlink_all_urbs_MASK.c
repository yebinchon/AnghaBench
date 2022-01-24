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
struct usb_8dev_priv {TYPE_1__* tx_contexts; int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  tx_submitted; int /*<<< orphan*/  rx_submitted; } ;
struct TYPE_2__ {int echo_index; } ;

/* Variables and functions */
 int MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct usb_8dev_priv *priv)
{
	int i;

	FUNC1(&priv->rx_submitted);

	FUNC1(&priv->tx_submitted);
	FUNC0(&priv->active_tx_urbs, 0);

	for (i = 0; i < MAX_TX_URBS; i++)
		priv->tx_contexts[i].echo_index = MAX_TX_URBS;
}