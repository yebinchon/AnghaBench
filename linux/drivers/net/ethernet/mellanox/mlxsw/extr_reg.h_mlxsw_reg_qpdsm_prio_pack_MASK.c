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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned short,int) ; 

__attribute__((used)) static inline void
FUNC6(char *payload, unsigned short prio, u8 dscp)
{
	FUNC1(payload, prio, 1);
	FUNC0(payload, prio, dscp);
	FUNC3(payload, prio, 1);
	FUNC2(payload, prio, dscp);
	FUNC5(payload, prio, 1);
	FUNC4(payload, prio, dscp);
}