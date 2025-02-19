
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct dpkg_profile_cfg {size_t num_extracts; struct dpkg_extract* extracts; } ;
struct TYPE_7__ {int field; int type; int prot; } ;
struct TYPE_8__ {TYPE_2__ from_hdr; } ;
struct dpkg_extract {TYPE_3__ extract; int type; } ;
struct dpaa2_eth_priv {int rx_hash_fields; } ;
struct device {int dummy; } ;
typedef enum dpaa2_eth_rx_dist { ____Placeholder_dpaa2_eth_rx_dist } dpaa2_eth_rx_dist ;
typedef int dma_addr_t ;
typedef int cls_cfg ;
struct TYPE_9__ {int id; int cls_field; int cls_prot; int rxnfc_field; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int DMA_TO_DEVICE ;
 int DPAA2_CLASSIFIER_DMA_SIZE ;
 int DPAA2_ETH_RX_DIST_HASH ;
 int DPKG_EXTRACT_FROM_HDR ;
 int DPKG_FULL_FIELD ;
 size_t DPKG_MAX_NUM_OF_EXTRACTS ;
 int E2BIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int config_cls_key (struct dpaa2_eth_priv*,int ) ;
 int config_hash_key (struct dpaa2_eth_priv*,int ) ;
 int config_legacy_hash_key (struct dpaa2_eth_priv*,int ) ;
 int dev_err (struct device*,char*,...) ;
 TYPE_4__* dist_fields ;
 int dma_map_single (struct device*,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 scalar_t__ dpaa2_eth_has_legacy_dist (struct dpaa2_eth_priv*) ;
 int dpni_prepare_key_cfg (struct dpkg_profile_cfg*,int *) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int memset (struct dpkg_profile_cfg*,int ,int) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dpaa2_eth_set_dist_key(struct net_device *net_dev,
      enum dpaa2_eth_rx_dist type, u64 flags)
{
 struct device *dev = net_dev->dev.parent;
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 struct dpkg_profile_cfg cls_cfg;
 u32 rx_hash_fields = 0;
 dma_addr_t key_iova;
 u8 *dma_mem;
 int i;
 int err = 0;

 memset(&cls_cfg, 0, sizeof(cls_cfg));

 for (i = 0; i < ARRAY_SIZE(dist_fields); i++) {
  struct dpkg_extract *key =
   &cls_cfg.extracts[cls_cfg.num_extracts];




  if (!(flags & dist_fields[i].id))
   continue;
  if (type == DPAA2_ETH_RX_DIST_HASH)
   rx_hash_fields |= dist_fields[i].rxnfc_field;

  if (cls_cfg.num_extracts >= DPKG_MAX_NUM_OF_EXTRACTS) {
   dev_err(dev, "error adding key extraction rule, too many rules?\n");
   return -E2BIG;
  }

  key->type = DPKG_EXTRACT_FROM_HDR;
  key->extract.from_hdr.prot = dist_fields[i].cls_prot;
  key->extract.from_hdr.type = DPKG_FULL_FIELD;
  key->extract.from_hdr.field = dist_fields[i].cls_field;
  cls_cfg.num_extracts++;
 }

 dma_mem = kzalloc(DPAA2_CLASSIFIER_DMA_SIZE, GFP_KERNEL);
 if (!dma_mem)
  return -ENOMEM;

 err = dpni_prepare_key_cfg(&cls_cfg, dma_mem);
 if (err) {
  dev_err(dev, "dpni_prepare_key_cfg error %d\n", err);
  goto free_key;
 }


 key_iova = dma_map_single(dev, dma_mem, DPAA2_CLASSIFIER_DMA_SIZE,
      DMA_TO_DEVICE);
 if (dma_mapping_error(dev, key_iova)) {
  dev_err(dev, "DMA mapping failed\n");
  err = -ENOMEM;
  goto free_key;
 }

 if (type == DPAA2_ETH_RX_DIST_HASH) {
  if (dpaa2_eth_has_legacy_dist(priv))
   err = config_legacy_hash_key(priv, key_iova);
  else
   err = config_hash_key(priv, key_iova);
 } else {
  err = config_cls_key(priv, key_iova);
 }

 dma_unmap_single(dev, key_iova, DPAA2_CLASSIFIER_DMA_SIZE,
    DMA_TO_DEVICE);
 if (!err && type == DPAA2_ETH_RX_DIST_HASH)
  priv->rx_hash_fields = rx_hash_fields;

free_key:
 kfree(dma_mem);
 return err;
}
