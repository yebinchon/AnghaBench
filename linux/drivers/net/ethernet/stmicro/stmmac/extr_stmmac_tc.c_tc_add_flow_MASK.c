#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stmmac_priv {int dummy; } ;
struct stmmac_flow_entry {int in_use; int /*<<< orphan*/  cookie; } ;
struct flow_rule {int /*<<< orphan*/  action; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; } ;
struct TYPE_3__ {int (* fn ) (struct stmmac_priv*,struct flow_cls_offload*,struct stmmac_flow_entry*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct flow_rule* FUNC1 (struct flow_cls_offload*) ; 
 int FUNC2 (struct stmmac_priv*,struct flow_cls_offload*,struct stmmac_flow_entry*) ; 
 struct stmmac_flow_entry* FUNC3 (struct stmmac_priv*,struct flow_cls_offload*,int) ; 
 TYPE_1__* tc_flow_parsers ; 
 int FUNC4 (struct stmmac_priv*,int /*<<< orphan*/ *,struct stmmac_flow_entry*) ; 

__attribute__((used)) static int FUNC5(struct stmmac_priv *priv,
		       struct flow_cls_offload *cls)
{
	struct stmmac_flow_entry *entry = FUNC3(priv, cls, false);
	struct flow_rule *rule = FUNC1(cls);
	int i, ret;

	if (!entry) {
		entry = FUNC3(priv, cls, true);
		if (!entry)
			return -ENOENT;
	}

	ret = FUNC4(priv, &rule->action, entry);
	if (ret)
		return ret;

	for (i = 0; i < FUNC0(tc_flow_parsers); i++) {
		ret = tc_flow_parsers[i].fn(priv, cls, entry);
		if (!ret) {
			entry->in_use = true;
			continue;
		}
	}

	if (!entry->in_use)
		return -EINVAL;

	entry->cookie = cls->cookie;
	return 0;
}