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
typedef  int u32 ;
struct mt7530_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PMCR_RX_EN ; 
 int PMCR_TX_EN ; 
 int /*<<< orphan*/  FUNC1 (struct mt7530_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7530_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct mt7530_priv *priv, int port, int enable)
{
	u32 mask = PMCR_TX_EN | PMCR_RX_EN;

	if (enable)
		FUNC2(priv, FUNC0(port), mask);
	else
		FUNC1(priv, FUNC0(port), mask);
}