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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_2__* ae_handle; int /*<<< orphan*/  enet_ver; } ;
struct hnae_ae_ops {int (* get_rss ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct hnae_ae_ops* ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct hns_nic_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
{
	struct hns_nic_priv *priv = FUNC2(netdev);
	struct hnae_ae_ops *ops;

	if (FUNC0(priv->enet_ver)) {
		FUNC1(netdev,
			   "RSS feature is not supported on this hardware\n");
		return -EOPNOTSUPP;
	}

	ops = priv->ae_handle->dev->ops;

	if (!indir)
		return 0;

	return ops->get_rss(priv->ae_handle, indir, key, hfunc);
}