#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ipw2100_priv {TYPE_3__* tx_buffers; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  tx_queue; } ;
struct ipw2100_data_header {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data_phys; scalar_t__ data; int /*<<< orphan*/ * txb; } ;
struct TYPE_5__ {TYPE_1__ d_struct; } ;
struct TYPE_6__ {TYPE_2__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TX_PENDED_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (struct ipw2100_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ipw2100_priv *priv)
{
	int i;

	FUNC0("enter\n");

	FUNC1(priv, &priv->tx_queue);

	if (!priv->tx_buffers)
		return;

	for (i = 0; i < TX_PENDED_QUEUE_LENGTH; i++) {
		if (priv->tx_buffers[i].info.d_struct.txb) {
			FUNC3(priv->tx_buffers[i].info.d_struct.
					   txb);
			priv->tx_buffers[i].info.d_struct.txb = NULL;
		}
		if (priv->tx_buffers[i].info.d_struct.data)
			FUNC4(priv->pci_dev,
					    sizeof(struct ipw2100_data_header),
					    priv->tx_buffers[i].info.d_struct.
					    data,
					    priv->tx_buffers[i].info.d_struct.
					    data_phys);
	}

	FUNC2(priv->tx_buffers);
	priv->tx_buffers = NULL;

	FUNC0("exit\n");
}