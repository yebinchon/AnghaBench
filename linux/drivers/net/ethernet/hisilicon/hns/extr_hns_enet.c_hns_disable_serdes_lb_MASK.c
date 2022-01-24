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
struct net_device {int dummy; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_1__* dev; } ;
struct hnae_ae_ops {int /*<<< orphan*/  (* set_loopback ) (struct hnae_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stop ) (struct hnae_handle*) ;} ;
struct TYPE_2__ {struct hnae_ae_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_INTERNALLOOP_SERDES ; 
 struct hns_nic_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct hns_nic_priv *priv = FUNC0(ndev);
	struct hnae_handle *h = priv->ae_handle;
	struct hnae_ae_ops *ops = h->dev->ops;

	ops->stop(h);
	ops->set_loopback(h, MAC_INTERNALLOOP_SERDES, 0);
}