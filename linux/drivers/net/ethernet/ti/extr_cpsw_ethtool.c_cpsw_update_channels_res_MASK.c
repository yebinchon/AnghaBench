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
struct netdev_queue {scalar_t__ tx_maxrate; } ;
struct cpsw_vector {int /*<<< orphan*/  ch; } ;
struct cpsw_priv {int /*<<< orphan*/  ndev; struct cpsw_common* cpsw; } ;
struct cpsw_common {int rx_ch_num; int tx_ch_num; int /*<<< orphan*/  dma; struct cpsw_vector* txv; struct cpsw_vector* rxv; } ;
typedef  void (* cpdma_handler_fn ) (void*,int,int) ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,void (*) (void*,int,int),int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_priv*,int /*<<< orphan*/ ,char*,int,char*) ; 
 void FUNC5 (void*,int,int) ; 
 int /*<<< orphan*/  ifup ; 
 struct netdev_queue* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct cpsw_priv *priv, int ch_num, int rx,
				    cpdma_handler_fn rx_handler)
{
	struct cpsw_common *cpsw = priv->cpsw;
	void (*handler)(void *, int, int);
	struct netdev_queue *queue;
	struct cpsw_vector *vec;
	int ret, *ch, vch;

	if (rx) {
		ch = &cpsw->rx_ch_num;
		vec = cpsw->rxv;
		handler = rx_handler;
	} else {
		ch = &cpsw->tx_ch_num;
		vec = cpsw->txv;
		handler = cpsw_tx_handler;
	}

	while (*ch < ch_num) {
		vch = rx ? *ch : 7 - *ch;
		vec[*ch].ch = FUNC2(cpsw->dma, vch, handler, rx);
		queue = FUNC6(priv->ndev, *ch);
		queue->tx_maxrate = 0;

		if (FUNC0(vec[*ch].ch))
			return FUNC1(vec[*ch].ch);

		if (!vec[*ch].ch)
			return -EINVAL;

		FUNC4(priv, ifup, "created new %d %s channel\n", *ch,
			  (rx ? "rx" : "tx"));
		(*ch)++;
	}

	while (*ch > ch_num) {
		(*ch)--;

		ret = FUNC3(vec[*ch].ch);
		if (ret)
			return ret;

		FUNC4(priv, ifup, "destroyed %d %s channel\n", *ch,
			  (rx ? "rx" : "tx"));
	}

	return 0;
}