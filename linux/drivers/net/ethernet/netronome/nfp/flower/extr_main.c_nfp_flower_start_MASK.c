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
struct nfp_flower_priv {int flower_ext_feats; int /*<<< orphan*/  nfp_lag; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;

/* Variables and functions */
 int NFP_FL_FEATS_LAG ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nfp_app*) ; 

__attribute__((used)) static int FUNC2(struct nfp_app *app)
{
	struct nfp_flower_priv *app_priv = app->priv;
	int err;

	if (app_priv->flower_ext_feats & NFP_FL_FEATS_LAG) {
		err = FUNC0(&app_priv->nfp_lag);
		if (err)
			return err;
	}

	return FUNC1(app);
}