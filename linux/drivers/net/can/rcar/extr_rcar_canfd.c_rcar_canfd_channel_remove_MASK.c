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
typedef  size_t u32 ;
struct rcar_canfd_global {struct rcar_canfd_channel** ch; } ;
struct rcar_canfd_channel {int /*<<< orphan*/  ndev; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rcar_canfd_global *gpriv, u32 ch)
{
	struct rcar_canfd_channel *priv = gpriv->ch[ch];

	if (priv) {
		FUNC2(priv->ndev);
		FUNC1(&priv->napi);
		FUNC0(priv->ndev);
	}
}