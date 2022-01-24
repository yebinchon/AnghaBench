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
struct timer_list {int dummy; } ;
struct stmmac_priv {int /*<<< orphan*/  eee_ctrl_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eee_ctrl_timer ; 
 int /*<<< orphan*/  eee_timer ; 
 struct stmmac_priv* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct stmmac_priv* priv ; 
 int /*<<< orphan*/  FUNC3 (struct stmmac_priv*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct stmmac_priv *priv = FUNC1(priv, t, eee_ctrl_timer);

	FUNC3(priv);
	FUNC2(&priv->eee_ctrl_timer, FUNC0(eee_timer));
}