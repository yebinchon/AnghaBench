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
typedef  enum mlxsw_afa_forward_type { ____Placeholder_mlxsw_afa_forward_type } mlxsw_afa_forward_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static inline void
FUNC3(char *payload, enum mlxsw_afa_forward_type type,
		       u32 pbs_ptr, bool in_port)
{
	FUNC2(payload, type);
	FUNC1(payload, pbs_ptr);
	FUNC0(payload, in_port);
}