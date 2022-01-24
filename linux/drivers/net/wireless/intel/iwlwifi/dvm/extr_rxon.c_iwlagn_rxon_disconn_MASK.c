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
struct iwl_rxon_context {scalar_t__ ctxid; int /*<<< orphan*/  staging; scalar_t__ vif; int /*<<< orphan*/  active; } ;
struct iwl_rxon_cmd {int dummy; } ;
struct iwl_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int) ; 
 scalar_t__ IWL_RXON_CTX_BSS ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int FUNC2 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int FUNC4 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int FUNC6 (struct iwl_priv*,struct iwl_rxon_context*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct iwl_priv*,struct iwl_rxon_context*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct iwl_priv*,struct iwl_rxon_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_rxon_cmd*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(struct iwl_priv *priv,
			       struct iwl_rxon_context *ctx)
{
	int ret;
	struct iwl_rxon_cmd *active = (void *)&ctx->active;

	if (ctx->ctxid == IWL_RXON_CTX_BSS) {
		ret = FUNC6(priv, ctx, &ctx->staging);
	} else {
		ret = FUNC7(priv, ctx, &ctx->staging);
		if (ret)
			return ret;
		if (ctx->vif) {
			ret = FUNC4(priv, ctx);
			if (ret) {
				FUNC0(priv, "Failed to send timing (%d)!\n", ret);
				return ret;
			}
			ret = FUNC8(priv, ctx, &ctx->staging);
		}
	}
	if (ret)
		return ret;

	/*
	 * Un-assoc RXON clears the station table and WEP
	 * keys, so we have to restore those afterwards.
	 */
	FUNC1(priv, ctx);
	/* update -- might need P2P now */
	FUNC5(priv, ctx);
	FUNC3(priv, ctx);
	ret = FUNC2(priv, ctx);
	if (ret) {
		FUNC0(priv, "Failed to restore WEP keys (%d)\n", ret);
		return ret;
	}

	FUNC9(active, &ctx->staging, sizeof(*active));
	return 0;
}