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
struct slave {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  BOND_STATE_ACTIVE 129 
#define  BOND_STATE_BACKUP 128 
 int FUNC0 (struct slave*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct slave *slave, char *buf)
{
	switch (FUNC0(slave)) {
	case BOND_STATE_ACTIVE:
		return FUNC1(buf, "active\n");
	case BOND_STATE_BACKUP:
		return FUNC1(buf, "backup\n");
	default:
		return FUNC1(buf, "UNKNOWN\n");
	}
}