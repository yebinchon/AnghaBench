
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ start_dbptr; scalar_t__ start_node; } ;
struct xgene_enet_cle {int max_nodes; int max_dbptrs; int parsers; int jump_bytes; TYPE_1__ ptree; int active_parser; } ;
struct xgene_enet_pdata {int rxq_cnt; scalar_t__ phy_mode; TYPE_4__* mac_ops; int phy_speed; TYPE_3__* port_ops; TYPE_5__** rx_ring; TYPE_2__* cle_ops; int rx_buff_cnt; struct net_device* ndev; struct xgene_enet_cle cle; } ;
struct xgene_enet_desc_ring {int id; } ;
struct net_device {int max_mtu; } ;
struct TYPE_10__ {struct xgene_enet_desc_ring* page_pool; struct xgene_enet_desc_ring* buf_pool; } ;
struct TYPE_9__ {int (* init ) (struct xgene_enet_pdata*) ;} ;
struct TYPE_8__ {int (* reset ) (struct xgene_enet_pdata*) ;int (* cle_bypass ) (struct xgene_enet_pdata*,int ,int ,int ) ;} ;
struct TYPE_7__ {int (* cle_init ) (struct xgene_enet_pdata*) ;} ;


 int PARSER_ALL ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int SPEED_UNKNOWN ;
 int XGENE_ENET_MAX_MTU ;
 int netdev_err (struct net_device*,char*) ;
 int stub1 (struct xgene_enet_pdata*) ;
 int stub2 (struct xgene_enet_pdata*) ;
 int stub3 (struct xgene_enet_pdata*,int ,int ,int ) ;
 int stub4 (struct xgene_enet_pdata*) ;
 int xgene_enet_create_desc_rings (struct net_device*) ;
 int xgene_enet_delete_desc_rings (struct xgene_enet_pdata*) ;
 int xgene_enet_dst_ring_num (TYPE_5__*) ;
 int xgene_enet_init_bufpool (struct xgene_enet_desc_ring*) ;
 int xgene_enet_refill_bufpool (struct xgene_enet_desc_ring*,int ) ;
 int xgene_enet_refill_pagepool (struct xgene_enet_desc_ring*,int ) ;

__attribute__((used)) static int xgene_enet_init_hw(struct xgene_enet_pdata *pdata)
{
 struct xgene_enet_cle *enet_cle = &pdata->cle;
 struct xgene_enet_desc_ring *page_pool;
 struct net_device *ndev = pdata->ndev;
 struct xgene_enet_desc_ring *buf_pool;
 u16 dst_ring_num, ring_id;
 int i, ret;
 u32 count;

 ret = pdata->port_ops->reset(pdata);
 if (ret)
  return ret;

 ret = xgene_enet_create_desc_rings(ndev);
 if (ret) {
  netdev_err(ndev, "Error in ring configuration\n");
  return ret;
 }


 for (i = 0; i < pdata->rxq_cnt; i++) {
  buf_pool = pdata->rx_ring[i]->buf_pool;
  xgene_enet_init_bufpool(buf_pool);
  page_pool = pdata->rx_ring[i]->page_pool;
  xgene_enet_init_bufpool(page_pool);

  count = pdata->rx_buff_cnt;
  ret = xgene_enet_refill_bufpool(buf_pool, count);
  if (ret)
   goto err;

  ret = xgene_enet_refill_pagepool(page_pool, count);
  if (ret)
   goto err;

 }

 dst_ring_num = xgene_enet_dst_ring_num(pdata->rx_ring[0]);
 buf_pool = pdata->rx_ring[0]->buf_pool;
 if (pdata->phy_mode == PHY_INTERFACE_MODE_XGMII) {

  enet_cle->max_nodes = 512;
  enet_cle->max_dbptrs = 1024;
  enet_cle->parsers = 3;
  enet_cle->active_parser = PARSER_ALL;
  enet_cle->ptree.start_node = 0;
  enet_cle->ptree.start_dbptr = 0;
  enet_cle->jump_bytes = 8;
  ret = pdata->cle_ops->cle_init(pdata);
  if (ret) {
   netdev_err(ndev, "Preclass Tree init error\n");
   goto err;
  }

 } else {
  dst_ring_num = xgene_enet_dst_ring_num(pdata->rx_ring[0]);
  buf_pool = pdata->rx_ring[0]->buf_pool;
  page_pool = pdata->rx_ring[0]->page_pool;
  ring_id = (page_pool) ? page_pool->id : 0;
  pdata->port_ops->cle_bypass(pdata, dst_ring_num,
         buf_pool->id, ring_id);
 }

 ndev->max_mtu = XGENE_ENET_MAX_MTU;
 pdata->phy_speed = SPEED_UNKNOWN;
 pdata->mac_ops->init(pdata);

 return ret;

err:
 xgene_enet_delete_desc_rings(pdata);
 return ret;
}
