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
struct alx_txd {int dummy; } ;
struct alx_tx_queue {int count; scalar_t__ read_idx; scalar_t__ write_idx; int /*<<< orphan*/  tpd; int /*<<< orphan*/  bufs; } ;
struct alx_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alx_tx_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct alx_tx_queue *txq)
{
	int i;

	if (!txq->bufs)
		return;

	for (i = 0; i < txq->count; i++)
		FUNC0(txq, i);

	FUNC2(txq->bufs, 0, txq->count * sizeof(struct alx_buffer));
	FUNC2(txq->tpd, 0, txq->count * sizeof(struct alx_txd));
	txq->write_idx = 0;
	txq->read_idx = 0;

	FUNC3(FUNC1(txq));
}