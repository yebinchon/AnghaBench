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
struct flow_rule {int dummy; } ;
struct flow_cls_offload {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ICMP ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_PORTS ; 
 struct flow_rule* FUNC0 (struct flow_cls_offload*) ; 
 scalar_t__ FUNC1 (struct flow_rule*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct flow_cls_offload *f)
{
	struct flow_rule *rule = FUNC0(f);

	return FUNC1(rule, FLOW_DISSECTOR_KEY_PORTS) ||
	       FUNC1(rule, FLOW_DISSECTOR_KEY_ICMP);
}