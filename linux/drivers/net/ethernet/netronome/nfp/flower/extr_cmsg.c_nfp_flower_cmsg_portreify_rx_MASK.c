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
struct sk_buff {int dummy; } ;
struct nfp_flower_priv {int /*<<< orphan*/  reify_wait_queue; int /*<<< orphan*/  reify_replies; } ;
struct nfp_flower_cmsg_portreify {int /*<<< orphan*/  portnum; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nfp_flower_cmsg_portreify* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct nfp_app *app, struct sk_buff *skb)
{
	struct nfp_flower_priv *priv = app->priv;
	struct nfp_flower_cmsg_portreify *msg;
	bool exists;

	msg = FUNC3(skb);

	FUNC5();
	exists = !!FUNC2(app, FUNC1(msg->portnum), NULL);
	FUNC6();
	if (!exists) {
		FUNC4(app, "ctrl msg for unknown port 0x%08x\n",
				     FUNC1(msg->portnum));
		return;
	}

	FUNC0(&priv->reify_replies);
	FUNC7(&priv->reify_wait_queue);
}