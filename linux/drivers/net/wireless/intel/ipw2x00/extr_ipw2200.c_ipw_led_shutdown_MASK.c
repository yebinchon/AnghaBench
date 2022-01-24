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
struct ipw_priv {int /*<<< orphan*/  led_act_off; int /*<<< orphan*/  led_link_off; int /*<<< orphan*/  led_link_on; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 

__attribute__((used)) static void FUNC4(struct ipw_priv *priv)
{
	FUNC1(priv);
	FUNC3(priv);
	FUNC2(priv);
	FUNC0(&priv->led_link_on);
	FUNC0(&priv->led_link_off);
	FUNC0(&priv->led_act_off);
}