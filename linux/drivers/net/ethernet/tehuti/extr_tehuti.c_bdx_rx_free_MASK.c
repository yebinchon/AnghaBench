#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  m; } ;
struct TYPE_4__ {int /*<<< orphan*/  m; } ;
struct bdx_priv {TYPE_1__ rxd_fifo0; TYPE_2__ rxf_fifo0; int /*<<< orphan*/ * rxdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct bdx_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bdx_priv*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bdx_priv *priv)
{
	ENTER;
	if (priv->rxdb) {
		FUNC2(priv, &priv->rxf_fifo0);
		FUNC3(priv->rxdb);
		priv->rxdb = NULL;
	}
	FUNC1(priv, &priv->rxf_fifo0.m);
	FUNC1(priv, &priv->rxd_fifo0.m);

	FUNC0();
}