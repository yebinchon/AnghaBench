#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int hw_mode; } ;
struct qed_hwfn {TYPE_1__ hw_info; TYPE_2__* cdev; } ;
struct TYPE_5__ {int type; int num_ports_in_engine; int num_hwfns; int /*<<< orphan*/  mf_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int,char*,int) ; 
 int EINVAL ; 
 int MODE_100G ; 
 int MODE_ASIC ; 
 int MODE_BB ; 
 int MODE_K2 ; 
 int MODE_MF_SD ; 
 int MODE_MF_SI ; 
 int MODE_PORTS_PER_ENG_1 ; 
 int MODE_PORTS_PER_ENG_2 ; 
 int MODE_PORTS_PER_ENG_4 ; 
 int NETIF_MSG_IFUP ; 
 int NETIF_MSG_PROBE ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  QED_MF_OVLAN_CLSS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qed_hwfn *p_hwfn)
{
	int hw_mode = 0;

	if (FUNC3(p_hwfn->cdev)) {
		hw_mode |= 1 << MODE_BB;
	} else if (FUNC2(p_hwfn->cdev)) {
		hw_mode |= 1 << MODE_K2;
	} else {
		FUNC0(p_hwfn, "Unknown chip type %#x\n",
			  p_hwfn->cdev->type);
		return -EINVAL;
	}

	switch (p_hwfn->cdev->num_ports_in_engine) {
	case 1:
		hw_mode |= 1 << MODE_PORTS_PER_ENG_1;
		break;
	case 2:
		hw_mode |= 1 << MODE_PORTS_PER_ENG_2;
		break;
	case 4:
		hw_mode |= 1 << MODE_PORTS_PER_ENG_4;
		break;
	default:
		FUNC0(p_hwfn, "num_ports_in_engine = %d not supported\n",
			  p_hwfn->cdev->num_ports_in_engine);
		return -EINVAL;
	}

	if (FUNC4(QED_MF_OVLAN_CLSS, &p_hwfn->cdev->mf_bits))
		hw_mode |= 1 << MODE_MF_SD;
	else
		hw_mode |= 1 << MODE_MF_SI;

	hw_mode |= 1 << MODE_ASIC;

	if (p_hwfn->cdev->num_hwfns > 1)
		hw_mode |= 1 << MODE_100G;

	p_hwfn->hw_info.hw_mode = hw_mode;

	FUNC1(p_hwfn, (NETIF_MSG_PROBE | NETIF_MSG_IFUP),
		   "Configuring function for hw_mode: 0x%08x\n",
		   p_hwfn->hw_info.hw_mode);

	return 0;
}