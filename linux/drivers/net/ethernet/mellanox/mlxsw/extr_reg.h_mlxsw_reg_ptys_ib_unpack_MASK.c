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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static inline void FUNC4(char *payload, u16 *p_ib_proto_cap,
					    u16 *p_ib_link_width_cap,
					    u16 *p_ib_proto_oper,
					    u16 *p_ib_link_width_oper)
{
	if (p_ib_proto_cap)
		*p_ib_proto_cap = FUNC2(payload);
	if (p_ib_link_width_cap)
		*p_ib_link_width_cap =
			FUNC0(payload);
	if (p_ib_proto_oper)
		*p_ib_proto_oper = FUNC3(payload);
	if (p_ib_link_width_oper)
		*p_ib_link_width_oper =
			FUNC1(payload);
}