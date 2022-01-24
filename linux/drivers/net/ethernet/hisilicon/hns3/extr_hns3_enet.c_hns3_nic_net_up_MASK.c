#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct hns3_nic_priv {int vector_num; int /*<<< orphan*/ * tqp_vector; int /*<<< orphan*/  state; struct hnae3_handle* ae_handle; } ;
struct TYPE_6__ {int num_tqps; int /*<<< orphan*/ * tqp; } ;
struct hnae3_handle {TYPE_3__ kinfo; TYPE_2__* ae_algo; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* start ) (struct hnae3_handle*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HNS3_NIC_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct hns3_nic_priv*) ; 
 int FUNC3 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns3_nic_priv*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,int) ; 
 struct hns3_nic_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC15(struct net_device *netdev)
{
	struct hns3_nic_priv *priv = FUNC11(netdev);
	struct hnae3_handle *h = priv->ae_handle;
	int i, j;
	int ret;

	ret = FUNC3(h);
	if (ret)
		return ret;

	/* the device can work without cpu rmap, only aRFS needs it */
	ret = FUNC5(netdev);
	if (ret)
		FUNC12(netdev, "set rx cpu rmap fail, ret=%d!\n", ret);

	/* get irq resource for all vectors */
	ret = FUNC2(priv);
	if (ret) {
		FUNC10(netdev, "init irq failed! ret=%d\n", ret);
		goto free_rmap;
	}

	FUNC0(HNS3_NIC_STATE_DOWN, &priv->state);

	/* enable the vectors */
	for (i = 0; i < priv->vector_num; i++)
		FUNC9(&priv->tqp_vector[i]);

	/* enable rcb */
	for (j = 0; j < h->kinfo.num_tqps; j++)
		FUNC7(h->kinfo.tqp[j]);

	/* start the ae_dev */
	ret = h->ae_algo->ops->start ? h->ae_algo->ops->start(h) : 0;
	if (ret)
		goto out_start_err;

	return 0;

out_start_err:
	FUNC13(HNS3_NIC_STATE_DOWN, &priv->state);
	while (j--)
		FUNC6(h->kinfo.tqp[j]);

	for (j = i - 1; j >= 0; j--)
		FUNC8(&priv->tqp_vector[j]);

	FUNC4(priv);
free_rmap:
	FUNC1(netdev);
	return ret;
}