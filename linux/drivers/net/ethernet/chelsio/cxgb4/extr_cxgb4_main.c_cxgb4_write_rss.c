
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_4__ {size_t abs_id; } ;
struct sge_eth_rxq {TYPE_2__ rspq; } ;
struct port_info {size_t first_qset; int rss_size; int viid; struct adapter* adapter; } ;
struct TYPE_3__ {struct sge_eth_rxq* ethrxq; } ;
struct adapter {int mbox; int pf; TYPE_1__ sge; } ;


 int ENOMEM ;
 int FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F ;
 int FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F ;
 int FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F ;
 int FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F ;
 int FW_RSS_VI_CONFIG_CMD_UDPEN_F ;
 int GFP_KERNEL ;
 int kfree (size_t*) ;
 size_t* kmalloc_array (int,int,int ) ;
 int t4_config_rss_range (struct adapter*,int ,int ,int ,int,size_t*,int) ;
 int t4_config_vi_rss (struct adapter*,int ,int ,int,size_t) ;

int cxgb4_write_rss(const struct port_info *pi, const u16 *queues)
{
 u16 *rss;
 int i, err;
 struct adapter *adapter = pi->adapter;
 const struct sge_eth_rxq *rxq;

 rxq = &adapter->sge.ethrxq[pi->first_qset];
 rss = kmalloc_array(pi->rss_size, sizeof(u16), GFP_KERNEL);
 if (!rss)
  return -ENOMEM;


 for (i = 0; i < pi->rss_size; i++, queues++)
  rss[i] = rxq[*queues].rspq.abs_id;

 err = t4_config_rss_range(adapter, adapter->pf, pi->viid, 0,
      pi->rss_size, rss, pi->rss_size);





 if (!err)
  err = t4_config_vi_rss(adapter, adapter->mbox, pi->viid,
           FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F |
           FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F |
           FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F |
           FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F |
           FW_RSS_VI_CONFIG_CMD_UDPEN_F,
           rss[0]);
 kfree(rss);
 return err;
}
