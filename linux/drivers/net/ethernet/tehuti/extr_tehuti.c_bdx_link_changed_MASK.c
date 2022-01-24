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
struct bdx_priv {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int MAC_LINK_STAT ; 
 int FUNC0 (struct bdx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  regMAC_LNK_STAT ; 

__attribute__((used)) static void FUNC7(struct bdx_priv *priv)
{
	u32 link = FUNC0(priv, regMAC_LNK_STAT) & MAC_LINK_STAT;

	if (!link) {
		if (FUNC3(priv->ndev)) {
			FUNC5(priv->ndev);
			FUNC2(priv->ndev);
			FUNC1(priv->ndev, "Link Down\n");
		}
	} else {
		if (!FUNC3(priv->ndev)) {
			FUNC6(priv->ndev);
			FUNC4(priv->ndev);
			FUNC1(priv->ndev, "Link Up\n");
		}
	}
}