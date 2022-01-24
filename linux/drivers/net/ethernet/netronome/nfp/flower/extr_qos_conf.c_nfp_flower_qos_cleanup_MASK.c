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
struct nfp_flower_priv {int /*<<< orphan*/  qos_stats_work; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct nfp_app *app)
{
	struct nfp_flower_priv *fl_priv = app->priv;

	FUNC0(&fl_priv->qos_stats_work);
}