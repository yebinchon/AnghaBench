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
struct w5300_priv {scalar_t__ indirect; } ;

/* Variables and functions */
 int MR_IND ; 
 int MR_PB ; 
 int MR_RST ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  W5300_IMR ; 
 int /*<<< orphan*/  W5300_MR ; 
 int /*<<< orphan*/  W5300_MTYPE ; 
 int /*<<< orphan*/  W5300_RMSRH ; 
 int /*<<< orphan*/  W5300_RMSRL ; 
 int /*<<< orphan*/  W5300_TMSRH ; 
 int /*<<< orphan*/  W5300_TMSRL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct w5300_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct w5300_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct w5300_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct w5300_priv*) ; 

__attribute__((used)) static void FUNC6(struct w5300_priv *priv)
{
	FUNC4(priv, W5300_MR, MR_RST);
	FUNC1(5);
	FUNC4(priv, W5300_MR, priv->indirect ?
				 FUNC0(7) | MR_PB | MR_IND :
				 FUNC0(7) | MR_PB);
	FUNC2(priv, W5300_IMR, 0);
	FUNC5(priv);

	/* Configure 128K of internal memory
	 * as 64K RX fifo and 64K TX fifo
	 */
	FUNC3(priv, W5300_RMSRL, 64 << 24);
	FUNC3(priv, W5300_RMSRH, 0);
	FUNC3(priv, W5300_TMSRL, 64 << 24);
	FUNC3(priv, W5300_TMSRH, 0);
	FUNC2(priv, W5300_MTYPE, 0x00ff);
}