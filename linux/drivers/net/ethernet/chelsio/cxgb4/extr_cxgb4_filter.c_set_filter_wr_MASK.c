#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct fw_filter2_wr {int frag_to_ovlan_vldm; int natmode_to_ulp_type; void* newfport; void* newlport; int /*<<< orphan*/  newfip; int /*<<< orphan*/  newlip; void* fpm; void* fp; void* lpm; void* lp; int /*<<< orphan*/  fipm; int /*<<< orphan*/  fip; int /*<<< orphan*/  lipm; int /*<<< orphan*/  lip; void* ovlanm; void* ovlan; void* ivlanm; void* ivlan; int /*<<< orphan*/  ttypm; int /*<<< orphan*/  ttyp; int /*<<< orphan*/  ptclm; int /*<<< orphan*/  ptcl; void* maci_to_matchtypem; void* rx_chan_rx_rpl_iq; scalar_t__ smac_sel; void* ethtypem; void* ethtype; void* del_filter_to_l2tix; void* tid_to_iq; void* len16_pkd; void* op_pkd; } ;
struct TYPE_13__ {int ethtype; int iport; int ivlan; int ovlan; int lport; int fport; int /*<<< orphan*/  fip; int /*<<< orphan*/  lip; int /*<<< orphan*/  tos; int /*<<< orphan*/  proto; int /*<<< orphan*/  matchtype; int /*<<< orphan*/  fcoe; int /*<<< orphan*/  macidx; int /*<<< orphan*/  ovlan_vld; int /*<<< orphan*/  ivlan_vld; int /*<<< orphan*/  frag; } ;
struct TYPE_12__ {int ethtype; int ivlan; int ovlan; int lport; int fport; int /*<<< orphan*/  fip; int /*<<< orphan*/  lip; int /*<<< orphan*/  tos; int /*<<< orphan*/  proto; int /*<<< orphan*/  matchtype; int /*<<< orphan*/  iport; int /*<<< orphan*/  fcoe; int /*<<< orphan*/  macidx; int /*<<< orphan*/  ovlan_vld; int /*<<< orphan*/  ivlan_vld; int /*<<< orphan*/  frag; } ;
struct TYPE_15__ {scalar_t__ newvlan; scalar_t__ action; int nat_lport; int nat_fport; TYPE_4__ val; int /*<<< orphan*/  nat_fip; int /*<<< orphan*/  nat_lip; scalar_t__ nat_mode; TYPE_3__ mask; int /*<<< orphan*/  prio; int /*<<< orphan*/  eport; int /*<<< orphan*/  hitcnts; scalar_t__ newdmac; int /*<<< orphan*/  dirsteerhash; int /*<<< orphan*/  maskhash; int /*<<< orphan*/  dirsteer; int /*<<< orphan*/  rpttid; int /*<<< orphan*/  iq; int /*<<< orphan*/  type; int /*<<< orphan*/  smac; scalar_t__ newsmac; int /*<<< orphan*/  dmac; int /*<<< orphan*/  vlan; } ;
struct filter_entry {int pending; TYPE_6__ fs; TYPE_8__* l2t; int /*<<< orphan*/  tid; int /*<<< orphan*/  smt; int /*<<< orphan*/  dev; } ;
struct TYPE_16__ {scalar_t__ filter2_wr_support; } ;
struct TYPE_10__ {int /*<<< orphan*/  abs_id; } ;
struct TYPE_11__ {TYPE_1__ fw_evtq; } ;
struct TYPE_14__ {struct filter_entry* ftid_tab; } ;
struct adapter {TYPE_7__ params; TYPE_2__ sge; TYPE_5__ tids; } ;
struct TYPE_17__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_PRIORITY_CONTROL ; 
 int ENOMEM ; 
 scalar_t__ FILTER_DROP ; 
 scalar_t__ FILTER_SWITCH ; 
 int /*<<< orphan*/  FW_FILTER2_WR ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_FILTER_WR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (int) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (int) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (int) ; 
 int FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ULP_MODE_NONE ; 
 int /*<<< orphan*/  ULP_MODE_TCPDDP ; 
 scalar_t__ VLAN_INSERT ; 
 scalar_t__ VLAN_REMOVE ; 
 scalar_t__ VLAN_REWRITE ; 
 struct fw_filter2_wr* FUNC37 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC38 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC41 (int) ; 
 void* FUNC42 (int) ; 
 int /*<<< orphan*/  FUNC43 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC45 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 TYPE_8__* FUNC46 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct adapter*,struct sk_buff*) ; 

int FUNC48(struct adapter *adapter, int fidx)
{
	struct filter_entry *f = &adapter->tids.ftid_tab[fidx];
	struct fw_filter2_wr *fwr;
	struct sk_buff *skb;

	skb = FUNC38(sizeof(*fwr), GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	/* If the new filter requires loopback Destination MAC and/or VLAN
	 * rewriting then we need to allocate a Layer 2 Table (L2T) entry for
	 * the filter.
	 */
	if (f->fs.newdmac || f->fs.newvlan) {
		/* allocate L2T entry for new filter */
		f->l2t = FUNC46(adapter, f->fs.vlan,
						f->fs.eport, f->fs.dmac);
		if (!f->l2t) {
			FUNC43(skb);
			return -ENOMEM;
		}
	}

	/* If the new filter requires loopback Source MAC rewriting then
	 * we need to allocate a SMT entry for the filter.
	 */
	if (f->fs.newsmac) {
		f->smt = FUNC40(f->dev, f->fs.smac);
		if (!f->smt) {
			if (f->l2t) {
				FUNC39(f->l2t);
				f->l2t = NULL;
			}
			FUNC43(skb);
			return -ENOMEM;
		}
	}

	fwr = FUNC37(skb, sizeof(*fwr));

	/* It would be nice to put most of the following in t4_hw.c but most
	 * of the work is translating the cxgbtool ch_filter_specification
	 * into the Work Request and the definition of that structure is
	 * currently in cxgbtool.h which isn't appropriate to pull into the
	 * common code.  We may eventually try to come up with a more neutral
	 * filter specification structure but for now it's easiest to simply
	 * put this fairly direct code in line ...
	 */
	if (adapter->params.filter2_wr_support)
		fwr->op_pkd = FUNC41(FUNC36(FW_FILTER2_WR));
	else
		fwr->op_pkd = FUNC41(FUNC36(FW_FILTER_WR));
	fwr->len16_pkd = FUNC41(FUNC35(sizeof(*fwr) / 16));
	fwr->tid_to_iq =
		FUNC41(FUNC33(f->tid) |
		      FUNC30(f->fs.type) |
		      FUNC22(0) |
		      FUNC12(f->fs.iq));
	fwr->del_filter_to_l2tix =
		FUNC41(FUNC29(f->fs.rpttid) |
		      FUNC5(f->fs.action == FILTER_DROP) |
		      FUNC3(f->fs.dirsteer) |
		      FUNC19(f->fs.maskhash) |
		      FUNC2(f->fs.dirsteerhash) |
		      FUNC16(f->fs.action == FILTER_SWITCH) |
		      FUNC4(f->fs.newdmac) |
		      FUNC11(f->fs.newvlan == VLAN_INSERT ||
					     f->fs.newvlan == VLAN_REWRITE) |
		      FUNC28(f->fs.newvlan == VLAN_REMOVE ||
					    f->fs.newvlan == VLAN_REWRITE) |
		      FUNC10(f->fs.hitcnts) |
		      FUNC34(f->fs.eport) |
		      FUNC27(f->fs.prio) |
		      FUNC15(f->l2t ? f->l2t->idx : 0));
	fwr->ethtype = FUNC42(f->fs.val.ethtype);
	fwr->ethtypem = FUNC42(f->fs.mask.ethtype);
	fwr->frag_to_ovlan_vldm =
		(FUNC9(f->fs.val.frag) |
		 FUNC8(f->fs.mask.frag) |
		 FUNC14(f->fs.val.ivlan_vld) |
		 FUNC24(f->fs.val.ovlan_vld) |
		 FUNC13(f->fs.mask.ivlan_vld) |
		 FUNC23(f->fs.mask.ovlan_vld));
	fwr->smac_sel = 0;
	fwr->rx_chan_rx_rpl_iq =
		FUNC42(FUNC31(0) |
		      FUNC32(adapter->sge.fw_evtq.abs_id));
	fwr->maci_to_matchtypem =
		FUNC41(FUNC18(f->fs.val.macidx) |
		      FUNC17(f->fs.mask.macidx) |
		      FUNC7(f->fs.val.fcoe) |
		      FUNC6(f->fs.mask.fcoe) |
		      FUNC26(f->fs.val.iport) |
		      FUNC25(f->fs.mask.iport) |
		      FUNC21(f->fs.val.matchtype) |
		      FUNC20(f->fs.mask.matchtype));
	fwr->ptcl = f->fs.val.proto;
	fwr->ptclm = f->fs.mask.proto;
	fwr->ttyp = f->fs.val.tos;
	fwr->ttypm = f->fs.mask.tos;
	fwr->ivlan = FUNC42(f->fs.val.ivlan);
	fwr->ivlanm = FUNC42(f->fs.mask.ivlan);
	fwr->ovlan = FUNC42(f->fs.val.ovlan);
	fwr->ovlanm = FUNC42(f->fs.mask.ovlan);
	FUNC44(fwr->lip, f->fs.val.lip, sizeof(fwr->lip));
	FUNC44(fwr->lipm, f->fs.mask.lip, sizeof(fwr->lipm));
	FUNC44(fwr->fip, f->fs.val.fip, sizeof(fwr->fip));
	FUNC44(fwr->fipm, f->fs.mask.fip, sizeof(fwr->fipm));
	fwr->lp = FUNC42(f->fs.val.lport);
	fwr->lpm = FUNC42(f->fs.mask.lport);
	fwr->fp = FUNC42(f->fs.val.fport);
	fwr->fpm = FUNC42(f->fs.mask.fport);

	if (adapter->params.filter2_wr_support) {
		fwr->natmode_to_ulp_type =
			FUNC1(f->fs.nat_mode ?
						 ULP_MODE_TCPDDP :
						 ULP_MODE_NONE) |
			FUNC0(f->fs.nat_mode);
		FUNC44(fwr->newlip, f->fs.nat_lip, sizeof(fwr->newlip));
		FUNC44(fwr->newfip, f->fs.nat_fip, sizeof(fwr->newfip));
		fwr->newlport = FUNC42(f->fs.nat_lport);
		fwr->newfport = FUNC42(f->fs.nat_fport);
	}

	/* Mark the filter as "pending" and ship off the Filter Work Request.
	 * When we get the Work Request Reply we'll clear the pending status.
	 */
	f->pending = 1;
	FUNC45(skb, CPL_PRIORITY_CONTROL, f->fs.val.iport & 0x3);
	FUNC47(adapter, skb);
	return 0;
}