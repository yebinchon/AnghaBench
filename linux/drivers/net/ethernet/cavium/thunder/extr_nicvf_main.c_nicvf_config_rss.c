
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tbl_offset; int tbl_len; int * ind_tbl; int msg; int hash_bits; int vf_id; } ;
union nic_mbx {TYPE_1__ rss_cfg; } ;
struct nicvf_rss_info {int rss_size; int * ind_tbl; int hash_bits; } ;
struct nicvf {int vf_id; struct nicvf_rss_info rss_info; } ;


 int NIC_MBOX_MSG_RSS_CFG ;
 int NIC_MBOX_MSG_RSS_CFG_CONT ;
 int RSS_IND_TBL_LEN_PER_MBX_MSG ;
 int min (int,int ) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

void nicvf_config_rss(struct nicvf *nic)
{
 union nic_mbx mbx = {};
 struct nicvf_rss_info *rss = &nic->rss_info;
 int ind_tbl_len = rss->rss_size;
 int i, nextq = 0;

 mbx.rss_cfg.vf_id = nic->vf_id;
 mbx.rss_cfg.hash_bits = rss->hash_bits;
 while (ind_tbl_len) {
  mbx.rss_cfg.tbl_offset = nextq;
  mbx.rss_cfg.tbl_len = min(ind_tbl_len,
            RSS_IND_TBL_LEN_PER_MBX_MSG);
  mbx.rss_cfg.msg = mbx.rss_cfg.tbl_offset ?
     NIC_MBOX_MSG_RSS_CFG_CONT : NIC_MBOX_MSG_RSS_CFG;

  for (i = 0; i < mbx.rss_cfg.tbl_len; i++)
   mbx.rss_cfg.ind_tbl[i] = rss->ind_tbl[nextq++];

  nicvf_send_msg_to_pf(nic, &mbx);

  ind_tbl_len -= mbx.rss_cfg.tbl_len;
 }
}
