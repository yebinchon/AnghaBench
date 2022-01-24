#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union s_fp_descr {int dummy; } s_fp_descr ;
typedef  int u_long ;
struct s_smt_tx_queue {int tx_free; scalar_t__ tx_used; struct s_smt_fp_txd volatile* tx_curr_get; } ;
typedef  struct s_smt_fp_txd {struct s_smt_fp_txd volatile* txd_next; int /*<<< orphan*/  txd_tbctrl; } volatile s_smt_fp_txd ;
struct TYPE_3__ {struct s_smt_tx_queue** tx; } ;
struct TYPE_4__ {TYPE_1__ fp; } ;
struct s_smc {TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  SMbuf ;

/* Variables and functions */
 int BMU_EOF ; 
 int BMU_OWN ; 
 int BMU_SMT_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  DDI_DMA_SYNC_FORCPU ; 
 int DMA_RD ; 
 int /*<<< orphan*/  FUNC2 (struct s_smt_fp_txd volatile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int QUEUE_A0 ; 
 int QUEUE_S ; 
 int /*<<< orphan*/  FUNC4 (struct s_smc*,union s_fp_descr volatile*,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct s_smc*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s_smc*,struct s_smt_fp_txd volatile*) ; 
 int /*<<< orphan*/  FUNC8 (struct s_smc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct s_smc *smc)
{
	struct s_smt_tx_queue *queue ;
	struct s_smt_fp_txd volatile *t1 ;
	struct s_smt_fp_txd volatile *t2 = NULL ;
	SMbuf *mb ;
	u_long	tbctrl ;
	int i ;
	int frag_count ;
	int n ;

	FUNC3("THcB",0,0,0) ;
	for (i = QUEUE_S; i <= QUEUE_A0; i++) {
		queue = smc->hw.fp.tx[i] ;
		t1 = queue->tx_curr_get ;
		FUNC1(5, "clear_txd: QUEUE = %d (0=sync/1=async)", i);

		for ( ; ; ) {
			frag_count = 0 ;

			do {
				FUNC2(t1,DDI_DMA_SYNC_FORCPU) ;
				FUNC1(5, "check OWN/EOF bit of TxD 0x%p", t1);
				tbctrl = FUNC6(FUNC0(t1->txd_tbctrl));

				if (tbctrl & BMU_OWN || !queue->tx_used){
					FUNC1(4, "End of TxDs queue %d", i);
					goto free_next_queue ;	/* next queue */
				}
				t1 = t1->txd_next ;
				frag_count++ ;
			} while (!(tbctrl & BMU_EOF)) ;

			t1 = queue->tx_curr_get ;
			for (n = frag_count; n; n--) {
				tbctrl = FUNC6(t1->txd_tbctrl) ;
				FUNC4(smc,
					(union s_fp_descr volatile *) t1,
					(int) (DMA_RD |
					((tbctrl & BMU_SMT_TX) >> 18))) ;
				t2 = t1 ;
				t1 = t1->txd_next ;
			}

			if (tbctrl & BMU_SMT_TX) {
				mb = FUNC5(smc) ;
				FUNC8(smc,mb) ;
			}
			else {
#ifndef PASS_1ST_TXD_2_TX_COMP
				FUNC1(4, "mac_drv_tx_comp for TxD 0x%p", t2);
				FUNC7(smc,t2) ;
#else
				DB_TX(4, "mac_drv_tx_comp for TxD 0x%x",
				      queue->tx_curr_get);
				mac_drv_tx_complete(smc,queue->tx_curr_get) ;
#endif
			}
			queue->tx_curr_get = t1 ;
			queue->tx_free += frag_count ;
			queue->tx_used -= frag_count ;
		}
free_next_queue: ;
	}
	FUNC3("THcE",0,0,0) ;
}