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
struct stmmac_priv {int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMMAC_DOWN ; 
 int /*<<< orphan*/  STMMAC_RESETING ; 
 int /*<<< orphan*/  STMMAC_RESET_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static void FUNC12(struct stmmac_priv *priv)
{
	if (!FUNC8(STMMAC_RESET_REQUESTED, &priv->state))
		return;
	if (FUNC10(STMMAC_DOWN, &priv->state))
		return;

	FUNC3(priv->dev, "Reset adapter.\n");

	FUNC5();
	FUNC4(priv->dev);
	while (FUNC9(STMMAC_RESETING, &priv->state))
		FUNC11(1000, 2000);

	FUNC7(STMMAC_DOWN, &priv->state);
	FUNC1(priv->dev);
	FUNC2(priv->dev, NULL);
	FUNC0(STMMAC_DOWN, &priv->state);
	FUNC0(STMMAC_RESETING, &priv->state);
	FUNC6();
}