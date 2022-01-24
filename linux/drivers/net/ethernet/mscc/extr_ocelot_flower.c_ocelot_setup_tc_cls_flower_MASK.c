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
struct ocelot_port_block {int dummy; } ;
struct flow_cls_offload {int command; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  FLOW_CLS_DESTROY 130 
#define  FLOW_CLS_REPLACE 129 
#define  FLOW_CLS_STATS 128 
 int FUNC0 (struct flow_cls_offload*,struct ocelot_port_block*) ; 
 int FUNC1 (struct flow_cls_offload*,struct ocelot_port_block*) ; 
 int FUNC2 (struct flow_cls_offload*,struct ocelot_port_block*) ; 

__attribute__((used)) static int FUNC3(struct flow_cls_offload *f,
				      struct ocelot_port_block *port_block)
{
	switch (f->command) {
	case FLOW_CLS_REPLACE:
		return FUNC1(f, port_block);
	case FLOW_CLS_DESTROY:
		return FUNC0(f, port_block);
	case FLOW_CLS_STATS:
		return FUNC2(f, port_block);
	default:
		return -EOPNOTSUPP;
	}
}