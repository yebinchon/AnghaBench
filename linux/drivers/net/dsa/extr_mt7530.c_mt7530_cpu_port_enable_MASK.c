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
struct mt7530_priv {scalar_t__ id; int /*<<< orphan*/  ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CPU_EN ; 
 int /*<<< orphan*/  CPU_MASK ; 
 int FUNC1 (int) ; 
 scalar_t__ ID_MT7621 ; 
 int /*<<< orphan*/  MT7530_MFC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_SPEC_TAG ; 
 int /*<<< orphan*/  SA_DIS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct mt7530_priv *priv,
		       int port)
{
	/* Enable Mediatek header mode on the cpu port */
	FUNC10(priv, FUNC4(port),
		     PORT_SPEC_TAG);

	/* Disable auto learning on the cpu port */
	FUNC9(priv, FUNC3(port), SA_DIS);

	/* Unknown unicast frame fordwarding to the cpu port */
	FUNC9(priv, MT7530_MFC, FUNC6(FUNC0(port)));

	/* Set CPU port number */
	if (priv->id == ID_MT7621)
		FUNC8(priv, MT7530_MFC, CPU_MASK, CPU_EN | FUNC1(port));

	/* CPU port gets connected to all user ports of
	 * the switch
	 */
	FUNC10(priv, FUNC2(port),
		     FUNC5(FUNC7(priv->ds)));

	return 0;
}