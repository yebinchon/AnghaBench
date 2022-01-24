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
struct nfp_flower_priv {int flower_ext_feats; int /*<<< orphan*/  nfp_lag; int /*<<< orphan*/  cmsg_work; int /*<<< orphan*/  cmsg_skbs_low; int /*<<< orphan*/  cmsg_skbs_high; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;

/* Variables and functions */
 int NFP_FL_FEATS_FLOW_MERGE ; 
 int NFP_FL_FEATS_LAG ; 
 int NFP_FL_FEATS_VF_RLIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_flower_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_flower_priv*) ; 

__attribute__((used)) static void FUNC7(struct nfp_app *app)
{
	struct nfp_flower_priv *app_priv = app->priv;

	FUNC5(&app_priv->cmsg_skbs_high);
	FUNC5(&app_priv->cmsg_skbs_low);
	FUNC0(&app_priv->cmsg_work);

	if (app_priv->flower_ext_feats & NFP_FL_FEATS_VF_RLIM)
		FUNC4(app);

	if (app_priv->flower_ext_feats & NFP_FL_FEATS_LAG)
		FUNC2(&app_priv->nfp_lag);

	if (app_priv->flower_ext_feats & NFP_FL_FEATS_FLOW_MERGE)
		FUNC1(app_priv);

	FUNC3(app);
	FUNC6(app->priv);
	app->priv = NULL;
}