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
struct bcm_sysport_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_FLUSH ; 
 int /*<<< orphan*/  RX_FLUSH_CNTL ; 
 int /*<<< orphan*/  TX_FLUSH ; 
 int /*<<< orphan*/  TX_FLUSH_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sysport_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bcm_sysport_priv *priv)
{
	FUNC1(priv, RX_FLUSH, RX_FLUSH_CNTL);
	FUNC1(priv, TX_FLUSH, TX_FLUSH_CNTL);
	FUNC0(1);
	FUNC1(priv, 0, RX_FLUSH_CNTL);
	FUNC1(priv, 0, TX_FLUSH_CNTL);
}