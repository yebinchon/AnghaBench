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
struct be_queue_info {int dummy; } ;
struct be_tx_obj {struct be_queue_info q; } ;
struct be_eth_wrb {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_queue_info*) ; 
 struct be_eth_wrb* FUNC1 (struct be_queue_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_eth_wrb*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct be_tx_obj *txo, dma_addr_t busaddr,
				 int len)
{
	struct be_eth_wrb *wrb;
	struct be_queue_info *txq = &txo->q;

	wrb = FUNC1(txq);
	FUNC2(wrb, busaddr, len);
	FUNC0(txq);
}