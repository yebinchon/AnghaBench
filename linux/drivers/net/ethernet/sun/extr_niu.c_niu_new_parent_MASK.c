#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union niu_parent_id {int dummy; } niu_parent_id ;
typedef  scalar_t__ u8 ;
struct TYPE_7__ {struct niu_parent* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct niu_parent {scalar_t__ plat_type; int rxdma_clock_divider; int* flow_key; int /*<<< orphan*/ * ldg_map; int /*<<< orphan*/ * tcam_key; int /*<<< orphan*/  tcam_num_entries; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  id; struct platform_device* plat_dev; scalar_t__ index; } ;
struct niu {int dummy; } ;
struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_6__ {TYPE_1__ attr; } ;

/* Variables and functions */
 int CLASS_CODE_SCTP_IPV6 ; 
 int CLASS_CODE_USER_PROG1 ; 
 int FLOW_KEY_IPDA ; 
 int FLOW_KEY_IPSA ; 
 int FLOW_KEY_L4_0_SHIFT ; 
 int FLOW_KEY_L4_1_SHIFT ; 
 int FLOW_KEY_L4_BYTE12 ; 
 int FLOW_KEY_PROTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  LDG_INVALID ; 
 int LDN_MAX ; 
 int /*<<< orphan*/  NIU_NONPCI_TCAM_ENTRIES ; 
 int /*<<< orphan*/  NIU_PCI_TCAM_ENTRIES ; 
 scalar_t__ PLAT_TYPE_NIU ; 
 int /*<<< orphan*/  TCAM_KEY_TSEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 struct niu_parent* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,union niu_parent_id*,int) ; 
 TYPE_2__* niu_parent_attributes ; 
 int /*<<< orphan*/  niu_parent_index ; 
 int /*<<< orphan*/  niu_parent_list ; 
 struct platform_device* FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct niu_parent *FUNC10(struct niu *np,
					 union niu_parent_id *id, u8 ptype)
{
	struct platform_device *plat_dev;
	struct niu_parent *p;
	int i;

	plat_dev = FUNC7("niu-board", niu_parent_index,
						   NULL, 0);
	if (FUNC1(plat_dev))
		return NULL;

	for (i = 0; niu_parent_attributes[i].attr.name; i++) {
		int err = FUNC3(&plat_dev->dev,
					     &niu_parent_attributes[i]);
		if (err)
			goto fail_unregister;
	}

	p = FUNC4(sizeof(*p), GFP_KERNEL);
	if (!p)
		goto fail_unregister;

	p->index = niu_parent_index++;

	plat_dev->dev.platform_data = p;
	p->plat_dev = plat_dev;

	FUNC6(&p->id, id, sizeof(*id));
	p->plat_type = ptype;
	FUNC0(&p->list);
	FUNC2(&p->refcnt, 0);
	FUNC5(&p->list, &niu_parent_list);
	FUNC9(&p->lock);

	p->rxdma_clock_divider = 7500;

	p->tcam_num_entries = NIU_PCI_TCAM_ENTRIES;
	if (p->plat_type == PLAT_TYPE_NIU)
		p->tcam_num_entries = NIU_NONPCI_TCAM_ENTRIES;

	for (i = CLASS_CODE_USER_PROG1; i <= CLASS_CODE_SCTP_IPV6; i++) {
		int index = i - CLASS_CODE_USER_PROG1;

		p->tcam_key[index] = TCAM_KEY_TSEL;
		p->flow_key[index] = (FLOW_KEY_IPSA |
				      FLOW_KEY_IPDA |
				      FLOW_KEY_PROTO |
				      (FLOW_KEY_L4_BYTE12 <<
				       FLOW_KEY_L4_0_SHIFT) |
				      (FLOW_KEY_L4_BYTE12 <<
				       FLOW_KEY_L4_1_SHIFT));
	}

	for (i = 0; i < LDN_MAX + 1; i++)
		p->ldg_map[i] = LDG_INVALID;

	return p;

fail_unregister:
	FUNC8(plat_dev);
	return NULL;
}