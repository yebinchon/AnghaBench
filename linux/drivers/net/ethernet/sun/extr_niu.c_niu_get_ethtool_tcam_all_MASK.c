#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct niu_tcam_entry {int /*<<< orphan*/  valid; } ;
struct niu_parent {struct niu_tcam_entry* tcam; } ;
struct niu {struct niu_parent* parent; } ;
struct ethtool_rxnfc {int data; int rule_cnt; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct niu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,unsigned long) ; 
 int FUNC2 (struct niu*,int) ; 
 int FUNC3 (struct niu*) ; 

__attribute__((used)) static int FUNC4(struct niu *np,
				    struct ethtool_rxnfc *nfc,
				    u32 *rule_locs)
{
	struct niu_parent *parent = np->parent;
	struct niu_tcam_entry *tp;
	int i, idx, cnt;
	unsigned long flags;
	int ret = 0;

	/* put the tcam size here */
	nfc->data = FUNC3(np);

	FUNC0(np, flags);
	for (cnt = 0, i = 0; i < nfc->data; i++) {
		idx = FUNC2(np, i);
		tp = &parent->tcam[idx];
		if (!tp->valid)
			continue;
		if (cnt == nfc->rule_cnt) {
			ret = -EMSGSIZE;
			break;
		}
		rule_locs[cnt] = i;
		cnt++;
	}
	FUNC1(np, flags);

	nfc->rule_cnt = cnt;

	return ret;
}