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
typedef  int /*<<< orphan*/  u16 ;
struct netsec_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETSEC_REG_NRM_TX_PKTCNT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netsec_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct netsec_priv *priv, u16 pkts)
{
	if (FUNC0(pkts))
		FUNC1(priv, NETSEC_REG_NRM_TX_PKTCNT, pkts);
}