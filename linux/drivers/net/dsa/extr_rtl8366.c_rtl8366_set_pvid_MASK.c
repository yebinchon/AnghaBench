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
struct rtl8366_vlan_mc {unsigned int vid; scalar_t__ member; int /*<<< orphan*/  fid; int /*<<< orphan*/  untag; } ;
struct rtl8366_vlan_4k {scalar_t__ member; int /*<<< orphan*/  fid; int /*<<< orphan*/  untag; } ;
struct realtek_smi {int num_vlan_mc; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_vlan_mc ) (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;int (* set_vlan_mc ) (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;int (* set_mc_index ) (struct realtek_smi*,unsigned int,int) ;int (* get_vlan_4k ) (struct realtek_smi*,unsigned int,struct rtl8366_vlan_4k*) ;} ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct realtek_smi*,int,int*) ; 
 int FUNC2 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ; 
 int FUNC3 (struct realtek_smi*,unsigned int,int) ; 
 int FUNC4 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ; 
 int FUNC5 (struct realtek_smi*,unsigned int,int) ; 
 int FUNC6 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ; 
 int FUNC7 (struct realtek_smi*,unsigned int,struct rtl8366_vlan_4k*) ; 
 int FUNC8 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ; 
 int FUNC9 (struct realtek_smi*,unsigned int,int) ; 
 int FUNC10 (struct realtek_smi*,unsigned int,struct rtl8366_vlan_4k*) ; 
 int FUNC11 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ; 

int FUNC12(struct realtek_smi *smi, unsigned int port,
		     unsigned int vid)
{
	struct rtl8366_vlan_mc vlanmc;
	struct rtl8366_vlan_4k vlan4k;
	int ret;
	int i;

	/* Try to find an existing MC entry for this VID */
	for (i = 0; i < smi->num_vlan_mc; i++) {
		ret = smi->ops->get_vlan_mc(smi, i, &vlanmc);
		if (ret)
			return ret;

		if (vid == vlanmc.vid) {
			ret = smi->ops->set_vlan_mc(smi, i, &vlanmc);
			if (ret)
				return ret;

			ret = smi->ops->set_mc_index(smi, port, i);
			return ret;
		}
	}

	/* We have no MC entry for this VID, try to find an empty one */
	for (i = 0; i < smi->num_vlan_mc; i++) {
		ret = smi->ops->get_vlan_mc(smi, i, &vlanmc);
		if (ret)
			return ret;

		if (vlanmc.vid == 0 && vlanmc.member == 0) {
			/* Update the entry from the 4K table */
			ret = smi->ops->get_vlan_4k(smi, vid, &vlan4k);
			if (ret)
				return ret;

			vlanmc.vid = vid;
			vlanmc.member = vlan4k.member;
			vlanmc.untag = vlan4k.untag;
			vlanmc.fid = vlan4k.fid;
			ret = smi->ops->set_vlan_mc(smi, i, &vlanmc);
			if (ret)
				return ret;

			ret = smi->ops->set_mc_index(smi, port, i);
			return ret;
		}
	}

	/* MC table is full, try to find an unused entry and replace it */
	for (i = 0; i < smi->num_vlan_mc; i++) {
		int used;

		ret = FUNC1(smi, i, &used);
		if (ret)
			return ret;

		if (!used) {
			/* Update the entry from the 4K table */
			ret = smi->ops->get_vlan_4k(smi, vid, &vlan4k);
			if (ret)
				return ret;

			vlanmc.vid = vid;
			vlanmc.member = vlan4k.member;
			vlanmc.untag = vlan4k.untag;
			vlanmc.fid = vlan4k.fid;
			ret = smi->ops->set_vlan_mc(smi, i, &vlanmc);
			if (ret)
				return ret;

			ret = smi->ops->set_mc_index(smi, port, i);
			return ret;
		}
	}

	FUNC0(smi->dev,
		"all VLAN member configurations are in use\n");

	return -ENOSPC;
}