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
struct pci_dev {int dummy; } ;
struct enetc_ndev_priv {int bdr_int_num; int num_tx_rings; struct enetc_int_vector** int_vector; struct enetc_bdr** rx_ring; int /*<<< orphan*/  rx_bd_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  ndev; struct enetc_bdr** tx_ring; int /*<<< orphan*/  tx_bd_count; TYPE_1__* si; } ;
struct enetc_bdr {int index; int /*<<< orphan*/  bd_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  ndev; } ;
struct enetc_int_vector {int count_tx_rings; int /*<<< orphan*/  napi; struct enetc_bdr rx_ring; struct enetc_bdr* tx_ring; int /*<<< orphan*/  tx_rings_map; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int ENETC_BDR_INT_BASE_IDX ; 
 int ENETC_MAX_BDR_INT ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  enetc_poll ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_int_vector*) ; 
 struct enetc_int_vector* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 

int FUNC7(struct enetc_ndev_priv *priv)
{
	struct pci_dev *pdev = priv->si->pdev;
	int size, v_tx_rings;
	int i, n, err, nvec;

	nvec = ENETC_BDR_INT_BASE_IDX + priv->bdr_int_num;
	/* allocate MSIX for both messaging and Rx/Tx interrupts */
	n = FUNC5(pdev, nvec, nvec, PCI_IRQ_MSIX);

	if (n < 0)
		return n;

	if (n != nvec)
		return -EPERM;

	/* # of tx rings per int vector */
	v_tx_rings = priv->num_tx_rings / priv->bdr_int_num;
	size = sizeof(struct enetc_int_vector) +
	       sizeof(struct enetc_bdr) * v_tx_rings;

	for (i = 0; i < priv->bdr_int_num; i++) {
		struct enetc_int_vector *v;
		struct enetc_bdr *bdr;
		int j;

		v = FUNC2(size, GFP_KERNEL);
		if (!v) {
			err = -ENOMEM;
			goto fail;
		}

		priv->int_vector[i] = v;

		FUNC3(priv->ndev, &v->napi, enetc_poll,
			       NAPI_POLL_WEIGHT);
		v->count_tx_rings = v_tx_rings;

		for (j = 0; j < v_tx_rings; j++) {
			int idx;

			/* default tx ring mapping policy */
			if (priv->bdr_int_num == ENETC_MAX_BDR_INT)
				idx = 2 * j + i; /* 2 CPUs */
			else
				idx = j + i * v_tx_rings; /* default */

			FUNC0(idx, &v->tx_rings_map);
			bdr = &v->tx_ring[j];
			bdr->index = idx;
			bdr->ndev = priv->ndev;
			bdr->dev = priv->dev;
			bdr->bd_count = priv->tx_bd_count;
			priv->tx_ring[idx] = bdr;
		}

		bdr = &v->rx_ring;
		bdr->index = i;
		bdr->ndev = priv->ndev;
		bdr->dev = priv->dev;
		bdr->bd_count = priv->rx_bd_count;
		priv->rx_ring[i] = bdr;
	}

	return 0;

fail:
	while (i--) {
		FUNC4(&priv->int_vector[i]->napi);
		FUNC1(priv->int_vector[i]);
	}

	FUNC6(pdev);

	return err;
}