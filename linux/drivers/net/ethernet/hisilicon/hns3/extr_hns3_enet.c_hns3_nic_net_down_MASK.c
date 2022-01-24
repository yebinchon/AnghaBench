#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct hns3_nic_priv {int vector_num; TYPE_3__* ae_handle; int /*<<< orphan*/ * tqp_vector; } ;
struct TYPE_6__ {int num_tqps; int /*<<< orphan*/ * tqp; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct hnae3_ae_ops {int /*<<< orphan*/  (* stop ) (TYPE_3__*) ;} ;
struct TYPE_8__ {TYPE_2__* ae_algo; } ;
struct TYPE_7__ {struct hnae3_ae_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct hnae3_handle* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct hns3_nic_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(struct net_device *netdev)
{
	struct hns3_nic_priv *priv = FUNC8(netdev);
	struct hnae3_handle *h = FUNC2(netdev);
	const struct hnae3_ae_ops *ops;
	int i;

	/* disable vectors */
	for (i = 0; i < priv->vector_num; i++)
		FUNC7(&priv->tqp_vector[i]);

	/* disable rcb */
	for (i = 0; i < h->kinfo.num_tqps; i++)
		FUNC6(h->kinfo.tqp[i]);

	/* stop ae_dev */
	ops = priv->ae_handle->ae_algo->ops;
	if (ops->stop)
		ops->stop(priv->ae_handle);

	FUNC1(netdev);

	/* free irq resources */
	FUNC4(priv);

	/* delay ring buffer clearing to hns3_reset_notify_uninit_enet
	 * during reset process, because driver may not be able
	 * to disable the ring through firmware when downing the netdev.
	 */
	if (!FUNC3(netdev))
		FUNC0(priv->ae_handle, false);

	FUNC5(priv->ae_handle);
}