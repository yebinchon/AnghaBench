#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct tid_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct port_info {int /*<<< orphan*/  viid; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int ovlan; int pf; int vf; int ovlan_vld; int pfvf_vld; int iport; scalar_t__ encap_vld; int /*<<< orphan*/  lip; int /*<<< orphan*/  vni; } ;
struct TYPE_9__ {int ovlan; int pf; int vf; int ovlan_vld; int pfvf_vld; int /*<<< orphan*/  vni; } ;
struct ch_filter_specification {int iq; TYPE_4__ val; scalar_t__ type; TYPE_3__ mask; int /*<<< orphan*/  smac; scalar_t__ newsmac; int /*<<< orphan*/  dmac; int /*<<< orphan*/  eport; int /*<<< orphan*/  vlan; scalar_t__ newvlan; scalar_t__ newdmac; } ;
struct filter_entry {int pending; int /*<<< orphan*/ * l2t; int /*<<< orphan*/ * smt; struct ch_filter_specification fs; struct net_device* dev; struct filter_ctx* ctx; } ;
struct filter_ctx {int dummy; } ;
struct cpl_t6_act_open_req {int dummy; } ;
struct TYPE_11__ {int abs_id; } ;
struct TYPE_12__ {TYPE_5__ fw_evtq; } ;
struct TYPE_7__ {int ingress_config; } ;
struct TYPE_8__ {TYPE_1__ tp; } ;
struct adapter {TYPE_6__ sge; TYPE_2__ params; struct tid_info tids; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_PRIORITY_SETUP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USE_ENC_IDX_F ; 
 int VNIC_F ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tid_info*,struct filter_entry*) ; 
 int FUNC2 (struct net_device*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tid_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ch_filter_specification*) ; 
 int FUNC9 (struct net_device*,struct ch_filter_specification*) ; 
 int /*<<< orphan*/  FUNC10 (struct filter_entry*) ; 
 struct filter_entry* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct filter_entry*,struct sk_buff*,int,struct adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct filter_entry*,struct sk_buff*,int,struct adapter*) ; 
 struct adapter* FUNC14 (struct net_device*) ; 
 struct port_info* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC19 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct adapter*,struct sk_buff*) ; 
 int FUNC21 (struct net_device*,struct ch_filter_specification*) ; 

__attribute__((used)) static int FUNC22(struct net_device *dev,
				 struct ch_filter_specification *fs,
				 struct filter_ctx *ctx)
{
	struct adapter *adapter = FUNC14(dev);
	struct port_info *pi = FUNC15(dev);
	struct tid_info *t = &adapter->tids;
	struct filter_entry *f;
	struct sk_buff *skb;
	int iq, atid, size;
	int ret = 0;
	u32 iconf;

	FUNC8(fs);
	ret = FUNC21(dev, fs);
	if (ret)
		return ret;

	iq = FUNC9(dev, fs);
	if (iq < 0)
		return iq;

	f = FUNC11(sizeof(*f), GFP_KERNEL);
	if (!f)
		return -ENOMEM;

	f->fs = *fs;
	f->ctx = ctx;
	f->dev = dev;
	f->fs.iq = iq;

	/* If the new filter requires loopback Destination MAC and/or VLAN
	 * rewriting then we need to allocate a Layer 2 Table (L2T) entry for
	 * the filter.
	 */
	if (f->fs.newdmac || f->fs.newvlan) {
		/* allocate L2T entry for new filter */
		f->l2t = FUNC19(adapter, f->fs.vlan,
						f->fs.eport, f->fs.dmac);
		if (!f->l2t) {
			ret = -ENOMEM;
			goto out_err;
		}
	}

	/* If the new filter requires loopback Source MAC rewriting then
	 * we need to allocate a SMT entry for the filter.
	 */
	if (f->fs.newsmac) {
		f->smt = FUNC6(f->dev, f->fs.smac);
		if (!f->smt) {
			if (f->l2t) {
				FUNC5(f->l2t);
				f->l2t = NULL;
			}
			ret = -ENOMEM;
			goto free_l2t;
		}
	}

	atid = FUNC1(t, f);
	if (atid < 0) {
		ret = atid;
		goto free_smt;
	}

	iconf = adapter->params.tp.ingress_config;
	if (iconf & VNIC_F) {
		f->fs.val.ovlan = (fs->val.pf << 13) | fs->val.vf;
		f->fs.mask.ovlan = (fs->mask.pf << 13) | fs->mask.vf;
		f->fs.val.ovlan_vld = fs->val.pfvf_vld;
		f->fs.mask.ovlan_vld = fs->mask.pfvf_vld;
	} else if (iconf & USE_ENC_IDX_F) {
		if (f->fs.val.encap_vld) {
			struct port_info *pi = FUNC15(f->dev);
			u8 match_all_mac[] = { 0, 0, 0, 0, 0, 0 };

			/* allocate MPS TCAM entry */
			ret = FUNC17(adapter, pi->viid,
						      match_all_mac,
						      match_all_mac,
						      f->fs.val.vni,
						      f->fs.mask.vni,
						      0, 1, 1);
			if (ret < 0)
				goto free_atid;

			f->fs.val.ovlan = ret;
			f->fs.mask.ovlan = 0xffff;
			f->fs.val.ovlan_vld = 1;
			f->fs.mask.ovlan_vld = 1;
		}
	}

	size = sizeof(struct cpl_t6_act_open_req);
	if (f->fs.type) {
		ret = FUNC2(f->dev, (const u32 *)&f->fs.val.lip, 1);
		if (ret)
			goto free_mps;

		skb = FUNC0(size, GFP_KERNEL);
		if (!skb) {
			ret = -ENOMEM;
			goto free_clip;
		}

		FUNC13(f, skb,
				 ((adapter->sge.fw_evtq.abs_id << 14) | atid),
				 adapter);
	} else {
		skb = FUNC0(size, GFP_KERNEL);
		if (!skb) {
			ret = -ENOMEM;
			goto free_mps;
		}

		FUNC12(f, skb,
				((adapter->sge.fw_evtq.abs_id << 14) | atid),
				adapter);
	}

	f->pending = 1;
	FUNC16(skb, CPL_PRIORITY_SETUP, f->fs.val.iport & 0x3);
	FUNC20(adapter, skb);
	return 0;

free_clip:
	FUNC3(f->dev, (const u32 *)&f->fs.val.lip, 1);

free_mps:
	if (f->fs.val.encap_vld && f->fs.val.ovlan_vld)
		FUNC18(adapter, pi->viid, f->fs.val.ovlan, 1);

free_atid:
	FUNC4(t, atid);

free_smt:
	if (f->smt) {
		FUNC7(f->smt);
		f->smt = NULL;
	}

free_l2t:
	if (f->l2t) {
		FUNC5(f->l2t);
		f->l2t = NULL;
	}

out_err:
	FUNC10(f);
	return ret;
}