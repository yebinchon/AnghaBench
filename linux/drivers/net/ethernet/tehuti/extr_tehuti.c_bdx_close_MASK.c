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
struct net_device {int dummy; } ;
struct bdx_priv {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bdx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bdx_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct bdx_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct bdx_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct bdx_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	struct bdx_priv *priv = NULL;

	ENTER;
	priv = FUNC6(ndev);

	FUNC5(&priv->napi);

	FUNC2(priv);
	FUNC1(priv);
	FUNC3(priv);
	FUNC4(priv);
	FUNC0(0);
}