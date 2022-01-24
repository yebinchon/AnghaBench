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
struct TYPE_2__ {int /*<<< orphan*/  bittiming; } ;
struct peak_canfd_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct peak_canfd_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct peak_canfd_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev)
{
	struct peak_canfd_priv *priv = FUNC0(ndev);

	return FUNC1(priv, &priv->can.bittiming);
}