#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_vsis; } ;
struct i40e_hw {int pf_id; TYPE_1__ func_caps; } ;
struct i40e_pf {int num_req_vfs; size_t lan_vsi; int flags; TYPE_3__* pdev; TYPE_2__** vsi; struct i40e_hw hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int num_queue_pairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I40E_FLAG_DCB_CAPABLE ; 
 int I40E_FLAG_FD_ATR_ENABLED ; 
 int I40E_FLAG_FD_SB_ENABLED ; 
 int I40E_FLAG_PTP ; 
 int I40E_FLAG_RSS_ENABLED ; 
 int I40E_FLAG_VEB_MODE_ENABLED ; 
 int INFO_STRING_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC6(struct i40e_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	char *buf;
	int i;

	buf = FUNC4(INFO_STRING_LEN, GFP_KERNEL);
	if (!buf)
		return;

	i = FUNC5(buf, INFO_STRING_LEN, "Features: PF-id[%d]", hw->pf_id);
#ifdef CONFIG_PCI_IOV
	i += snprintf(&buf[i], REMAIN(i), " VFs: %d", pf->num_req_vfs);
#endif
	i += FUNC5(&buf[i], FUNC0(i), " VSIs: %d QP: %d",
		      pf->hw.func_caps.num_vsis,
		      pf->vsi[pf->lan_vsi]->num_queue_pairs);
	if (pf->flags & I40E_FLAG_RSS_ENABLED)
		i += FUNC5(&buf[i], FUNC0(i), " RSS");
	if (pf->flags & I40E_FLAG_FD_ATR_ENABLED)
		i += FUNC5(&buf[i], FUNC0(i), " FD_ATR");
	if (pf->flags & I40E_FLAG_FD_SB_ENABLED) {
		i += FUNC5(&buf[i], FUNC0(i), " FD_SB");
		i += FUNC5(&buf[i], FUNC0(i), " NTUPLE");
	}
	if (pf->flags & I40E_FLAG_DCB_CAPABLE)
		i += FUNC5(&buf[i], FUNC0(i), " DCB");
	i += FUNC5(&buf[i], FUNC0(i), " VxLAN");
	i += FUNC5(&buf[i], FUNC0(i), " Geneve");
	if (pf->flags & I40E_FLAG_PTP)
		i += FUNC5(&buf[i], FUNC0(i), " PTP");
	if (pf->flags & I40E_FLAG_VEB_MODE_ENABLED)
		i += FUNC5(&buf[i], FUNC0(i), " VEB");
	else
		i += FUNC5(&buf[i], FUNC0(i), " VEPA");

	FUNC2(&pf->pdev->dev, "%s\n", buf);
	FUNC3(buf);
	FUNC1(i > INFO_STRING_LEN);
}