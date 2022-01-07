
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct fw_filter2_wr {int frag_to_ovlan_vldm; int natmode_to_ulp_type; void* newfport; void* newlport; int newfip; int newlip; void* fpm; void* fp; void* lpm; void* lp; int fipm; int fip; int lipm; int lip; void* ovlanm; void* ovlan; void* ivlanm; void* ivlan; int ttypm; int ttyp; int ptclm; int ptcl; void* maci_to_matchtypem; void* rx_chan_rx_rpl_iq; scalar_t__ smac_sel; void* ethtypem; void* ethtype; void* del_filter_to_l2tix; void* tid_to_iq; void* len16_pkd; void* op_pkd; } ;
struct TYPE_13__ {int ethtype; int iport; int ivlan; int ovlan; int lport; int fport; int fip; int lip; int tos; int proto; int matchtype; int fcoe; int macidx; int ovlan_vld; int ivlan_vld; int frag; } ;
struct TYPE_12__ {int ethtype; int ivlan; int ovlan; int lport; int fport; int fip; int lip; int tos; int proto; int matchtype; int iport; int fcoe; int macidx; int ovlan_vld; int ivlan_vld; int frag; } ;
struct TYPE_15__ {scalar_t__ newvlan; scalar_t__ action; int nat_lport; int nat_fport; TYPE_4__ val; int nat_fip; int nat_lip; scalar_t__ nat_mode; TYPE_3__ mask; int prio; int eport; int hitcnts; scalar_t__ newdmac; int dirsteerhash; int maskhash; int dirsteer; int rpttid; int iq; int type; int smac; scalar_t__ newsmac; int dmac; int vlan; } ;
struct filter_entry {int pending; TYPE_6__ fs; TYPE_8__* l2t; int tid; int smt; int dev; } ;
struct TYPE_16__ {scalar_t__ filter2_wr_support; } ;
struct TYPE_10__ {int abs_id; } ;
struct TYPE_11__ {TYPE_1__ fw_evtq; } ;
struct TYPE_14__ {struct filter_entry* ftid_tab; } ;
struct adapter {TYPE_7__ params; TYPE_2__ sge; TYPE_5__ tids; } ;
struct TYPE_17__ {int idx; } ;


 int CPL_PRIORITY_CONTROL ;
 int ENOMEM ;
 scalar_t__ FILTER_DROP ;
 scalar_t__ FILTER_SWITCH ;
 int FW_FILTER2_WR ;
 int FW_FILTER2_WR_NATMODE_V (scalar_t__) ;
 int FW_FILTER2_WR_ULP_TYPE_V (int ) ;
 int FW_FILTER_WR ;
 int FW_FILTER_WR_DIRSTEERHASH_V (int ) ;
 int FW_FILTER_WR_DIRSTEER_V (int ) ;
 int FW_FILTER_WR_DMAC_V (scalar_t__) ;
 int FW_FILTER_WR_DROP_V (int) ;
 int FW_FILTER_WR_FCOEM_V (int ) ;
 int FW_FILTER_WR_FCOE_V (int ) ;
 int FW_FILTER_WR_FRAGM_V (int ) ;
 int FW_FILTER_WR_FRAG_V (int ) ;
 int FW_FILTER_WR_HITCNTS_V (int ) ;
 int FW_FILTER_WR_INSVLAN_V (int) ;
 int FW_FILTER_WR_IQ_V (int ) ;
 int FW_FILTER_WR_IVLAN_VLDM_V (int ) ;
 int FW_FILTER_WR_IVLAN_VLD_V (int ) ;
 int FW_FILTER_WR_L2TIX_V (int ) ;
 int FW_FILTER_WR_LPBK_V (int) ;
 int FW_FILTER_WR_MACIM_V (int ) ;
 int FW_FILTER_WR_MACI_V (int ) ;
 int FW_FILTER_WR_MASKHASH_V (int ) ;
 int FW_FILTER_WR_MATCHTYPEM_V (int ) ;
 int FW_FILTER_WR_MATCHTYPE_V (int ) ;
 int FW_FILTER_WR_NOREPLY_V (int ) ;
 int FW_FILTER_WR_OVLAN_VLDM_V (int ) ;
 int FW_FILTER_WR_OVLAN_VLD_V (int ) ;
 int FW_FILTER_WR_PORTM_V (int ) ;
 int FW_FILTER_WR_PORT_V (int) ;
 int FW_FILTER_WR_PRIO_V (int ) ;
 int FW_FILTER_WR_RMVLAN_V (int) ;
 int FW_FILTER_WR_RPTTID_V (int ) ;
 int FW_FILTER_WR_RQTYPE_V (int ) ;
 int FW_FILTER_WR_RX_CHAN_V (int ) ;
 int FW_FILTER_WR_RX_RPL_IQ_V (int ) ;
 int FW_FILTER_WR_TID_V (int ) ;
 int FW_FILTER_WR_TXCHAN_V (int ) ;
 int FW_WR_LEN16_V (int) ;
 int FW_WR_OP_V (int ) ;
 int GFP_KERNEL ;
 int ULP_MODE_NONE ;
 int ULP_MODE_TCPDDP ;
 scalar_t__ VLAN_INSERT ;
 scalar_t__ VLAN_REMOVE ;
 scalar_t__ VLAN_REWRITE ;
 struct fw_filter2_wr* __skb_put_zero (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int cxgb4_l2t_release (TYPE_8__*) ;
 int cxgb4_smt_alloc_switching (int ,int ) ;
 void* htonl (int) ;
 void* htons (int) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,int) ;
 int set_wr_txq (struct sk_buff*,int ,int) ;
 TYPE_8__* t4_l2t_alloc_switching (struct adapter*,int ,int ,int ) ;
 int t4_ofld_send (struct adapter*,struct sk_buff*) ;

int set_filter_wr(struct adapter *adapter, int fidx)
{
 struct filter_entry *f = &adapter->tids.ftid_tab[fidx];
 struct fw_filter2_wr *fwr;
 struct sk_buff *skb;

 skb = alloc_skb(sizeof(*fwr), GFP_KERNEL);
 if (!skb)
  return -ENOMEM;





 if (f->fs.newdmac || f->fs.newvlan) {

  f->l2t = t4_l2t_alloc_switching(adapter, f->fs.vlan,
      f->fs.eport, f->fs.dmac);
  if (!f->l2t) {
   kfree_skb(skb);
   return -ENOMEM;
  }
 }




 if (f->fs.newsmac) {
  f->smt = cxgb4_smt_alloc_switching(f->dev, f->fs.smac);
  if (!f->smt) {
   if (f->l2t) {
    cxgb4_l2t_release(f->l2t);
    f->l2t = ((void*)0);
   }
   kfree_skb(skb);
   return -ENOMEM;
  }
 }

 fwr = __skb_put_zero(skb, sizeof(*fwr));
 if (adapter->params.filter2_wr_support)
  fwr->op_pkd = htonl(FW_WR_OP_V(FW_FILTER2_WR));
 else
  fwr->op_pkd = htonl(FW_WR_OP_V(FW_FILTER_WR));
 fwr->len16_pkd = htonl(FW_WR_LEN16_V(sizeof(*fwr) / 16));
 fwr->tid_to_iq =
  htonl(FW_FILTER_WR_TID_V(f->tid) |
        FW_FILTER_WR_RQTYPE_V(f->fs.type) |
        FW_FILTER_WR_NOREPLY_V(0) |
        FW_FILTER_WR_IQ_V(f->fs.iq));
 fwr->del_filter_to_l2tix =
  htonl(FW_FILTER_WR_RPTTID_V(f->fs.rpttid) |
        FW_FILTER_WR_DROP_V(f->fs.action == FILTER_DROP) |
        FW_FILTER_WR_DIRSTEER_V(f->fs.dirsteer) |
        FW_FILTER_WR_MASKHASH_V(f->fs.maskhash) |
        FW_FILTER_WR_DIRSTEERHASH_V(f->fs.dirsteerhash) |
        FW_FILTER_WR_LPBK_V(f->fs.action == FILTER_SWITCH) |
        FW_FILTER_WR_DMAC_V(f->fs.newdmac) |
        FW_FILTER_WR_INSVLAN_V(f->fs.newvlan == VLAN_INSERT ||
          f->fs.newvlan == VLAN_REWRITE) |
        FW_FILTER_WR_RMVLAN_V(f->fs.newvlan == VLAN_REMOVE ||
         f->fs.newvlan == VLAN_REWRITE) |
        FW_FILTER_WR_HITCNTS_V(f->fs.hitcnts) |
        FW_FILTER_WR_TXCHAN_V(f->fs.eport) |
        FW_FILTER_WR_PRIO_V(f->fs.prio) |
        FW_FILTER_WR_L2TIX_V(f->l2t ? f->l2t->idx : 0));
 fwr->ethtype = htons(f->fs.val.ethtype);
 fwr->ethtypem = htons(f->fs.mask.ethtype);
 fwr->frag_to_ovlan_vldm =
  (FW_FILTER_WR_FRAG_V(f->fs.val.frag) |
   FW_FILTER_WR_FRAGM_V(f->fs.mask.frag) |
   FW_FILTER_WR_IVLAN_VLD_V(f->fs.val.ivlan_vld) |
   FW_FILTER_WR_OVLAN_VLD_V(f->fs.val.ovlan_vld) |
   FW_FILTER_WR_IVLAN_VLDM_V(f->fs.mask.ivlan_vld) |
   FW_FILTER_WR_OVLAN_VLDM_V(f->fs.mask.ovlan_vld));
 fwr->smac_sel = 0;
 fwr->rx_chan_rx_rpl_iq =
  htons(FW_FILTER_WR_RX_CHAN_V(0) |
        FW_FILTER_WR_RX_RPL_IQ_V(adapter->sge.fw_evtq.abs_id));
 fwr->maci_to_matchtypem =
  htonl(FW_FILTER_WR_MACI_V(f->fs.val.macidx) |
        FW_FILTER_WR_MACIM_V(f->fs.mask.macidx) |
        FW_FILTER_WR_FCOE_V(f->fs.val.fcoe) |
        FW_FILTER_WR_FCOEM_V(f->fs.mask.fcoe) |
        FW_FILTER_WR_PORT_V(f->fs.val.iport) |
        FW_FILTER_WR_PORTM_V(f->fs.mask.iport) |
        FW_FILTER_WR_MATCHTYPE_V(f->fs.val.matchtype) |
        FW_FILTER_WR_MATCHTYPEM_V(f->fs.mask.matchtype));
 fwr->ptcl = f->fs.val.proto;
 fwr->ptclm = f->fs.mask.proto;
 fwr->ttyp = f->fs.val.tos;
 fwr->ttypm = f->fs.mask.tos;
 fwr->ivlan = htons(f->fs.val.ivlan);
 fwr->ivlanm = htons(f->fs.mask.ivlan);
 fwr->ovlan = htons(f->fs.val.ovlan);
 fwr->ovlanm = htons(f->fs.mask.ovlan);
 memcpy(fwr->lip, f->fs.val.lip, sizeof(fwr->lip));
 memcpy(fwr->lipm, f->fs.mask.lip, sizeof(fwr->lipm));
 memcpy(fwr->fip, f->fs.val.fip, sizeof(fwr->fip));
 memcpy(fwr->fipm, f->fs.mask.fip, sizeof(fwr->fipm));
 fwr->lp = htons(f->fs.val.lport);
 fwr->lpm = htons(f->fs.mask.lport);
 fwr->fp = htons(f->fs.val.fport);
 fwr->fpm = htons(f->fs.mask.fport);

 if (adapter->params.filter2_wr_support) {
  fwr->natmode_to_ulp_type =
   FW_FILTER2_WR_ULP_TYPE_V(f->fs.nat_mode ?
       ULP_MODE_TCPDDP :
       ULP_MODE_NONE) |
   FW_FILTER2_WR_NATMODE_V(f->fs.nat_mode);
  memcpy(fwr->newlip, f->fs.nat_lip, sizeof(fwr->newlip));
  memcpy(fwr->newfip, f->fs.nat_fip, sizeof(fwr->newfip));
  fwr->newlport = htons(f->fs.nat_lport);
  fwr->newfport = htons(f->fs.nat_fport);
 }




 f->pending = 1;
 set_wr_txq(skb, CPL_PRIORITY_CONTROL, f->fs.val.iport & 0x3);
 t4_ofld_send(adapter, skb);
 return 0;
}
