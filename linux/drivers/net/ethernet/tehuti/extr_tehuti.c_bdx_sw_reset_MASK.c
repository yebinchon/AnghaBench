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
struct bdx_priv {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  ENTER ; 
 int FUNC1 (struct bdx_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TXF_WPTR_WR_PTR ; 
 int /*<<< orphan*/  FUNC3 (struct bdx_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int regDIS_PORT ; 
 int regDIS_QU ; 
 int regGMAC_RXF_A ; 
 int regIMR ; 
 int regISR ; 
 int regRDINTCM0 ; 
 int regRST_PORT ; 
 int regRST_QU ; 
 int regTDINTCM0 ; 
 int regTXD_WPTR_0 ; 
 int regTXF_RPTR_3 ; 

__attribute__((used)) static int FUNC6(struct bdx_priv *priv)
{
	int i;

	ENTER;
	/* 1. load MAC (obsolete) */
	/* 2. disable Rx (and Tx) */
	FUNC3(priv, regGMAC_RXF_A, 0);
	FUNC4(100);
	/* 3. disable port */
	FUNC3(priv, regDIS_PORT, 1);
	/* 4. disable queue */
	FUNC3(priv, regDIS_QU, 1);
	/* 5. wait until hw is disabled */
	for (i = 0; i < 50; i++) {
		if (FUNC1(priv, regRST_PORT) & 1)
			break;
		FUNC4(10);
	}
	if (i == 50)
		FUNC5(priv->ndev, "SW reset timeout. continuing anyway\n");

	/* 6. disable intrs */
	FUNC3(priv, regRDINTCM0, 0);
	FUNC3(priv, regTDINTCM0, 0);
	FUNC3(priv, regIMR, 0);
	FUNC1(priv, regISR);

	/* 7. reset queue */
	FUNC3(priv, regRST_QU, 1);
	/* 8. reset port */
	FUNC3(priv, regRST_PORT, 1);
	/* 9. zero all read and write pointers */
	for (i = regTXD_WPTR_0; i <= regTXF_RPTR_3; i += 0x10)
		FUNC0("%x = %x\n", i, FUNC1(priv, i) & TXF_WPTR_WR_PTR);
	for (i = regTXD_WPTR_0; i <= regTXF_RPTR_3; i += 0x10)
		FUNC3(priv, i, 0);
	/* 10. unseet port disable */
	FUNC3(priv, regDIS_PORT, 0);
	/* 11. unset queue disable */
	FUNC3(priv, regDIS_QU, 0);
	/* 12. unset queue reset */
	FUNC3(priv, regRST_QU, 0);
	/* 13. unset port reset */
	FUNC3(priv, regRST_PORT, 0);
	/* 14. enable Rx */
	/* skiped. will be done later */
	/* 15. save MAC (obsolete) */
	for (i = regTXD_WPTR_0; i <= regTXF_RPTR_3; i += 0x10)
		FUNC0("%x = %x\n", i, FUNC1(priv, i) & TXF_WPTR_WR_PTR);

	FUNC2(0);
}