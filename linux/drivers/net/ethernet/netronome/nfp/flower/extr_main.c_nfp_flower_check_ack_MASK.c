#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ack; int /*<<< orphan*/  lock; } ;
struct nfp_flower_priv {TYPE_1__ mtu_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct nfp_flower_priv *app_priv)
{
	bool ret;

	FUNC0(&app_priv->mtu_conf.lock);
	ret = app_priv->mtu_conf.ack;
	FUNC1(&app_priv->mtu_conf.lock);

	return ret;
}