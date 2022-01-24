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
struct mt7530_priv {int dummy; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSW_TRGMII_RCK_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_TRGMII_CTRL ; 
 int RXC_DQSISEL ; 
 int RX_RST ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7530_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7530_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7530_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct dsa_switch *ds)
{
	struct mt7530_priv *priv = ds->priv;
	int i;

	for (i = 0 ; i < NUM_TRGMII_CTRL; i++)
		FUNC5(priv, FUNC0(i),
				    FUNC2(8) | FUNC1(8));

	FUNC4(priv, GSW_TRGMII_RCK_CTRL, RX_RST | RXC_DQSISEL);
	FUNC3(priv, GSW_TRGMII_RCK_CTRL, RX_RST);

	return 0;
}