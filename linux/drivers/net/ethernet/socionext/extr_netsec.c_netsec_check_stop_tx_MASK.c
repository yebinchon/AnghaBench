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
struct netsec_priv {int /*<<< orphan*/  ndev; struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {int dummy; } ;

/* Variables and functions */
 int DESC_NUM ; 
 int NETDEV_TX_BUSY ; 
 size_t NETSEC_RING_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct netsec_desc_ring*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct netsec_priv *priv, int used)
{
	struct netsec_desc_ring *dring = &priv->desc_ring[NETSEC_RING_TX];

	/* keep tail from touching the queue */
	if (DESC_NUM - used < 2) {
		FUNC0(priv->ndev);

		/* Make sure we read the updated value in case
		 * descriptors got freed
		 */
		FUNC3();

		used = FUNC2(dring);
		if (DESC_NUM - used < 2)
			return NETDEV_TX_BUSY;

		FUNC1(priv->ndev);
	}

	return 0;
}