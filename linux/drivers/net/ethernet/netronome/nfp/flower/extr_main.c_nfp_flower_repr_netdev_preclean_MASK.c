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
struct nfp_repr {int dummy; } ;
struct nfp_flower_priv {int /*<<< orphan*/  reify_replies; } ;
struct nfp_app {int /*<<< orphan*/  cpp; struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfp_repr* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct nfp_repr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct nfp_app *app, struct net_device *netdev)
{
	struct nfp_repr *repr = FUNC1(netdev);
	struct nfp_flower_priv *priv = app->priv;
	atomic_t *replies = &priv->reify_replies;
	int err;

	FUNC0(replies, 0);
	err = FUNC2(repr, false);
	if (err) {
		FUNC4(app->cpp, "Failed to notify firmware about repr destruction\n");
		return;
	}

	FUNC3(app, replies, 1);
}