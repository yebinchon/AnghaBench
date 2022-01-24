#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct net_device {TYPE_3__* netdev_ops; } ;
struct hns3_nic_priv {TYPE_1__* ring_data; struct hnae3_handle* ae_handle; } ;
struct hns3_enet_ring {int dummy; } ;
struct TYPE_6__ {size_t num_tqps; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct ethtool_ringparam {int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  tx_pending; } ;
struct TYPE_8__ {scalar_t__ desc_num; } ;
struct TYPE_7__ {int (* ndo_open ) (struct net_device*) ;int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;
struct TYPE_5__ {TYPE_4__* ring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HNS3_RING_BD_MULTIPLE ; 
 struct hns3_enet_ring* FUNC1 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_nic_priv*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct net_device*,struct ethtool_ringparam*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns3_enet_ring*) ; 
 int FUNC5 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,struct hns3_enet_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 struct hns3_nic_priv* FUNC10 (struct net_device*) ; 
 int FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct net_device *ndev,
			      struct ethtool_ringparam *param)
{
	struct hns3_nic_priv *priv = FUNC10(ndev);
	struct hnae3_handle *h = priv->ae_handle;
	struct hns3_enet_ring *tmp_rings;
	bool if_running = FUNC11(ndev);
	u32 old_tx_desc_num, new_tx_desc_num;
	u32 old_rx_desc_num, new_rx_desc_num;
	u16 queue_num = h->kinfo.num_tqps;
	int ret, i;

	ret = FUNC3(ndev, param);
	if (ret)
		return ret;

	/* Hardware requires that its descriptors must be multiple of eight */
	new_tx_desc_num = FUNC0(param->tx_pending, HNS3_RING_BD_MULTIPLE);
	new_rx_desc_num = FUNC0(param->rx_pending, HNS3_RING_BD_MULTIPLE);
	old_tx_desc_num = priv->ring_data[0].ring->desc_num;
	old_rx_desc_num = priv->ring_data[queue_num].ring->desc_num;
	if (old_tx_desc_num == new_tx_desc_num &&
	    old_rx_desc_num == new_rx_desc_num)
		return 0;

	tmp_rings = FUNC1(priv);
	if (!tmp_rings) {
		FUNC8(ndev,
			   "backup ring param failed by allocating memory fail\n");
		return -ENOMEM;
	}

	FUNC9(ndev,
		    "Changing Tx/Rx ring depth from %d/%d to %d/%d\n",
		    old_tx_desc_num, old_rx_desc_num,
		    new_tx_desc_num, new_rx_desc_num);

	if (if_running)
		ndev->netdev_ops->ndo_stop(ndev);

	FUNC2(priv, new_tx_desc_num, new_rx_desc_num);
	ret = FUNC5(priv);
	if (ret) {
		FUNC8(ndev, "Change bd num fail, revert to old value(%d)\n",
			   ret);

		FUNC2(priv, old_tx_desc_num,
					    old_rx_desc_num);
		for (i = 0; i < h->kinfo.num_tqps * 2; i++)
			FUNC7(priv->ring_data[i].ring, &tmp_rings[i],
			       sizeof(struct hns3_enet_ring));
	} else {
		for (i = 0; i < h->kinfo.num_tqps * 2; i++)
			FUNC4(&tmp_rings[i]);
	}

	FUNC6(tmp_rings);

	if (if_running)
		ret = ndev->netdev_ops->ndo_open(ndev);

	return ret;
}