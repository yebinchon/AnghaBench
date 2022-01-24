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
typedef  int /*<<< orphan*/  u32 ;
struct mvpp2_cls_flow_entry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MVPP2_FLOW_N_FIELDS ; 
 int FUNC0 (struct mvpp2_cls_flow_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_cls_flow_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_cls_flow_entry*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mvpp2_cls_flow_entry *fe,
				    u32 field_id)
{
	int nb_fields = FUNC0(fe);

	if (nb_fields == MVPP2_FLOW_N_FIELDS)
		return -EINVAL;

	FUNC2(fe, nb_fields, field_id);

	FUNC1(fe, nb_fields + 1);

	return 0;
}