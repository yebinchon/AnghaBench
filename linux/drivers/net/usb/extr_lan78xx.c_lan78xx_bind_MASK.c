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
struct usb_interface {int dummy; } ;
struct lan78xx_priv {int /*<<< orphan*/  set_vlan; int /*<<< orphan*/  set_multicast; int /*<<< orphan*/  wol; scalar_t__* vlan_table; int /*<<< orphan*/  dataport_mutex; int /*<<< orphan*/  rfe_ctl_lock; struct lan78xx_net* dev; } ;
struct lan78xx_net {unsigned long* data; TYPE_1__* net; scalar_t__ hard_mtu; } ;
struct TYPE_2__ {int features; int hw_features; int /*<<< orphan*/  flags; scalar_t__ hard_header_len; scalar_t__ mtu; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_RX_CSUM_ENABLE ; 
 scalar_t__ DEFAULT_TSO_CSUM_ENABLE ; 
 scalar_t__ DEFAULT_TX_CSUM_ENABLE ; 
 scalar_t__ DEFAULT_VLAN_FILTER_ENABLE ; 
 scalar_t__ DEFAULT_VLAN_RX_OFFLOAD ; 
 int DP_SEL_VHF_VLAN_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFF_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 scalar_t__ TX_OVERHEAD ; 
 int /*<<< orphan*/  WAKE_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lan78xx_priv*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lan78xx_deferred_multicast_write ; 
 int /*<<< orphan*/  lan78xx_deferred_vlan_write ; 
 int FUNC4 (struct lan78xx_net*,struct usb_interface*) ; 
 int FUNC5 (struct lan78xx_net*) ; 
 int /*<<< orphan*/  FUNC6 (struct lan78xx_net*) ; 
 int FUNC7 (struct lan78xx_net*) ; 
 int FUNC8 (struct lan78xx_net*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct lan78xx_net *dev, struct usb_interface *intf)
{
	struct lan78xx_priv *pdata = NULL;
	int ret;
	int i;

	ret = FUNC4(dev, intf);
	if (ret) {
		FUNC10(dev->net, "lan78xx_get_endpoints failed: %d\n",
			    ret);
		return ret;
	}

	dev->data[0] = (unsigned long)FUNC3(sizeof(*pdata), GFP_KERNEL);

	pdata = (struct lan78xx_priv *)(dev->data[0]);
	if (!pdata) {
		FUNC10(dev->net, "Unable to allocate lan78xx_priv");
		return -ENOMEM;
	}

	pdata->dev = dev;

	FUNC11(&pdata->rfe_ctl_lock);
	FUNC9(&pdata->dataport_mutex);

	FUNC0(&pdata->set_multicast, lan78xx_deferred_multicast_write);

	for (i = 0; i < DP_SEL_VHF_VLAN_LEN; i++)
		pdata->vlan_table[i] = 0;

	FUNC0(&pdata->set_vlan, lan78xx_deferred_vlan_write);

	dev->net->features = 0;

	if (DEFAULT_TX_CSUM_ENABLE)
		dev->net->features |= NETIF_F_HW_CSUM;

	if (DEFAULT_RX_CSUM_ENABLE)
		dev->net->features |= NETIF_F_RXCSUM;

	if (DEFAULT_TSO_CSUM_ENABLE)
		dev->net->features |= NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_SG;

	if (DEFAULT_VLAN_RX_OFFLOAD)
		dev->net->features |= NETIF_F_HW_VLAN_CTAG_RX;

	if (DEFAULT_VLAN_FILTER_ENABLE)
		dev->net->features |= NETIF_F_HW_VLAN_CTAG_FILTER;

	dev->net->hw_features = dev->net->features;

	ret = FUNC8(dev);
	if (ret < 0) {
		FUNC10(dev->net,
			    "lan78xx_setup_irq_domain() failed : %d", ret);
		goto out1;
	}

	dev->net->hard_header_len += TX_OVERHEAD;
	dev->hard_mtu = dev->net->mtu + dev->net->hard_header_len;

	/* Init all registers */
	ret = FUNC7(dev);
	if (ret) {
		FUNC10(dev->net, "Registers INIT FAILED....");
		goto out2;
	}

	ret = FUNC5(dev);
	if (ret) {
		FUNC10(dev->net, "MDIO INIT FAILED.....");
		goto out2;
	}

	dev->net->flags |= IFF_MULTICAST;

	pdata->wol = WAKE_MAGIC;

	return ret;

out2:
	FUNC6(dev);

out1:
	FUNC10(dev->net, "Bind routine FAILED");
	FUNC1(&pdata->set_multicast);
	FUNC1(&pdata->set_vlan);
	FUNC2(pdata);
	return ret;
}