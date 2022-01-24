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
typedef  int u8 ;
typedef  int u32 ;
typedef  enum init_split_types { ____Placeholder_init_split_types } init_split_types ;
struct TYPE_2__ {char const* name; } ;

/* Variables and functions */
 int SPLIT_TYPE_NONE ; 
 int FUNC0 (int*,int,char*,int) ; 
 int FUNC1 (int*,int,char*,int) ; 
 int FUNC2 (int*,int,char const*,char const*) ; 
 TYPE_1__* s_split_type_defs ; 

__attribute__((used)) static u32 FUNC3(u32 *dump_buf,
				 bool dump,
				 u32 num_reg_entries,
				 enum init_split_types split_type,
				 u8 split_id,
				 const char *param_name, const char *param_val)
{
	u8 num_params = 2 +
	    (split_type != SPLIT_TYPE_NONE ? 1 : 0) + (param_name ? 1 : 0);
	u32 offset = 0;

	offset += FUNC1(dump_buf + offset,
				       dump, "grc_regs", num_params);
	offset += FUNC0(dump_buf + offset,
				     dump, "count", num_reg_entries);
	offset += FUNC2(dump_buf + offset,
				     dump, "split",
				     s_split_type_defs[split_type].name);
	if (split_type != SPLIT_TYPE_NONE)
		offset += FUNC0(dump_buf + offset,
					     dump, "id", split_id);
	if (param_name && param_val)
		offset += FUNC2(dump_buf + offset,
					     dump, param_name, param_val);

	return offset;
}