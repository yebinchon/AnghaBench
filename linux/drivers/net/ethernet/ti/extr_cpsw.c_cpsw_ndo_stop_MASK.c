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
struct net_device {int /*<<< orphan*/  mc; } ;
struct cpsw_priv {int /*<<< orphan*/  ndev; struct cpsw_common* cpsw; } ;
struct cpsw_common {int usage_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  ale; int /*<<< orphan*/  dma; int /*<<< orphan*/  cpts; int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  napi_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpsw_common*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_priv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpsw_common*) ; 
 scalar_t__ FUNC6 (struct cpsw_common*) ; 
 int /*<<< orphan*/  cpsw_purge_all_mc ; 
 int /*<<< orphan*/  cpsw_slave_stop ; 
 int /*<<< orphan*/  FUNC7 (struct cpsw_common*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cpsw_priv*,int /*<<< orphan*/ ,struct cpsw_common*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cpsw_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct net_device *ndev)
{
	struct cpsw_priv *priv = FUNC11(ndev);
	struct cpsw_common *cpsw = priv->cpsw;

	FUNC4(priv, ifdown, "shutting down cpsw device\n");
	FUNC0(&ndev->mc, ndev, cpsw_purge_all_mc);
	FUNC13(priv->ndev);
	FUNC12(priv->ndev);

	if (cpsw->usage_count <= 1) {
		FUNC10(&cpsw->napi_rx);
		FUNC10(&cpsw->napi_tx);
		FUNC8(cpsw->cpts);
		FUNC5(cpsw);
		FUNC1(cpsw->dma);
		FUNC2(cpsw->ale);
		FUNC3(cpsw);
	}
	FUNC9(priv, cpsw_slave_stop, cpsw);

	if (FUNC6(cpsw))
		FUNC7(cpsw);

	cpsw->usage_count--;
	FUNC14(cpsw->dev);
	return 0;
}