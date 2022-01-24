#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct skge_port {int port; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  gma_offset; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GM_RXO_OK_HI ; 
 int /*<<< orphan*/  GM_RXO_OK_LO ; 
 int /*<<< orphan*/  GM_TXO_OK_HI ; 
 int /*<<< orphan*/  GM_TXO_OK_LO ; 
 int FUNC1 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* skge_stats ; 

__attribute__((used)) static void FUNC2(struct skge_port *skge, u64 *data)
{
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	int i;

	data[0] = (u64) FUNC1(hw, port, GM_TXO_OK_HI) << 32
		| FUNC1(hw, port, GM_TXO_OK_LO);
	data[1] = (u64) FUNC1(hw, port, GM_RXO_OK_HI) << 32
		| FUNC1(hw, port, GM_RXO_OK_LO);

	for (i = 2; i < FUNC0(skge_stats); i++)
		data[i] = FUNC1(hw, port,
					  skge_stats[i].gma_offset);
}