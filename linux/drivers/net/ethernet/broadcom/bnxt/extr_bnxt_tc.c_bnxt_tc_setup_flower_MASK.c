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
typedef  int /*<<< orphan*/  u16 ;
struct flow_cls_offload {int command; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  FLOW_CLS_DESTROY 130 
#define  FLOW_CLS_REPLACE 129 
#define  FLOW_CLS_STATS 128 
 int FUNC0 (struct bnxt*,int /*<<< orphan*/ ,struct flow_cls_offload*) ; 
 int FUNC1 (struct bnxt*,struct flow_cls_offload*) ; 
 int FUNC2 (struct bnxt*,struct flow_cls_offload*) ; 

int FUNC3(struct bnxt *bp, u16 src_fid,
			 struct flow_cls_offload *cls_flower)
{
	switch (cls_flower->command) {
	case FLOW_CLS_REPLACE:
		return FUNC0(bp, src_fid, cls_flower);
	case FLOW_CLS_DESTROY:
		return FUNC1(bp, cls_flower);
	case FLOW_CLS_STATS:
		return FUNC2(bp, cls_flower);
	default:
		return -EOPNOTSUPP;
	}
}