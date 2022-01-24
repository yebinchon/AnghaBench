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
struct nfp_flower_priv {int /*<<< orphan*/  qos_stats_work; int /*<<< orphan*/  qos_stats_lock; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  update_stats_cache ; 

void FUNC2(struct nfp_app *app)
{
	struct nfp_flower_priv *fl_priv = app->priv;

	FUNC1(&fl_priv->qos_stats_lock);
	FUNC0(&fl_priv->qos_stats_work, &update_stats_cache);
}