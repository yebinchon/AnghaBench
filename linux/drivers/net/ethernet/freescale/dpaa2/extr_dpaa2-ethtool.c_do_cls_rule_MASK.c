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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_rx_flow_spec {scalar_t__ ring_cookie; int /*<<< orphan*/  location; } ;
struct dpni_rule_cfg {int key_size; void* mask_iova; void* key_iova; int /*<<< orphan*/  member_0; } ;
struct dpni_fs_action_cfg {scalar_t__ flow_id; int /*<<< orphan*/  options; int /*<<< orphan*/  member_0; } ;
struct dpaa2_eth_priv {scalar_t__ rx_cls_fields; int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; } ;
struct device {int dummy; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ DPAA2_ETH_DIST_ALL ; 
 int /*<<< orphan*/  DPNI_FS_OPT_DISCARD ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RX_CLS_FLOW_DISC ; 
 void* FUNC0 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct dpaa2_eth_priv*) ; 
 scalar_t__ FUNC6 (struct dpaa2_eth_priv*) ; 
 int FUNC7 (struct net_device*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpni_rule_cfg*,struct dpni_fs_action_cfg*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpni_rule_cfg*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*) ; 
 struct dpaa2_eth_priv* FUNC13 (struct net_device*) ; 
 int FUNC14 (struct ethtool_rx_flow_spec*,void*,void*,scalar_t__*) ; 

__attribute__((used)) static int FUNC15(struct net_device *net_dev,
		       struct ethtool_rx_flow_spec *fs,
		       bool add)
{
	struct dpaa2_eth_priv *priv = FUNC13(net_dev);
	struct device *dev = net_dev->dev.parent;
	struct dpni_rule_cfg rule_cfg = { 0 };
	struct dpni_fs_action_cfg fs_act = { 0 };
	dma_addr_t key_iova;
	u64 fields = 0;
	void *key_buf;
	int err;

	if (fs->ring_cookie != RX_CLS_FLOW_DISC &&
	    fs->ring_cookie >= FUNC6(priv))
		return -EINVAL;

	rule_cfg.key_size = FUNC3(DPAA2_ETH_DIST_ALL);

	/* allocate twice the key size, for the actual key and for mask */
	key_buf = FUNC11(rule_cfg.key_size * 2, GFP_KERNEL);
	if (!key_buf)
		return -ENOMEM;

	/* Fill the key and mask memory areas */
	err = FUNC14(fs, key_buf, key_buf + rule_cfg.key_size, &fields);
	if (err)
		goto free_mem;

	if (!FUNC5(priv)) {
		/* Masking allows us to configure a maximal key during init and
		 * use it for all flow steering rules. Without it, we include
		 * in the key only the fields actually used, so we need to
		 * extract the others from the final key buffer.
		 *
		 * Program the FS key if needed, or return error if previously
		 * set key can't be used for the current rule. User needs to
		 * delete existing rules in this case to allow for the new one.
		 */
		if (!priv->rx_cls_fields) {
			err = FUNC7(net_dev, fields);
			if (err)
				goto free_mem;

			priv->rx_cls_fields = fields;
		} else if (priv->rx_cls_fields != fields) {
			FUNC12(net_dev, "No support for multiple FS keys, need to delete existing rules\n");
			err = -EOPNOTSUPP;
			goto free_mem;
		}

		FUNC4(key_buf, fields);
		rule_cfg.key_size = FUNC3(fields);
	}

	key_iova = FUNC0(dev, key_buf, rule_cfg.key_size * 2,
				  DMA_TO_DEVICE);
	if (FUNC1(dev, key_iova)) {
		err = -ENOMEM;
		goto free_mem;
	}

	rule_cfg.key_iova = key_iova;
	if (FUNC5(priv))
		rule_cfg.mask_iova = key_iova + rule_cfg.key_size;

	if (add) {
		if (fs->ring_cookie == RX_CLS_FLOW_DISC)
			fs_act.options |= DPNI_FS_OPT_DISCARD;
		else
			fs_act.flow_id = fs->ring_cookie;
		err = FUNC8(priv->mc_io, 0, priv->mc_token, 0,
					fs->location, &rule_cfg, &fs_act);
	} else {
		err = FUNC9(priv->mc_io, 0, priv->mc_token, 0,
					   &rule_cfg);
	}

	FUNC2(dev, key_iova, rule_cfg.key_size * 2, DMA_TO_DEVICE);

free_mem:
	FUNC10(key_buf);

	return err;
}