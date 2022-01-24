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
typedef  unsigned long long u64 ;
struct rocker_port {unsigned long long pport; int /*<<< orphan*/  rocker; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_PHYS_ENABLE ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC2(const struct rocker_port *rocker_port,
				   bool enable)
{
	u64 val = FUNC0(rocker_port->rocker, PORT_PHYS_ENABLE);

	if (enable)
		val |= 1ULL << rocker_port->pport;
	else
		val &= ~(1ULL << rocker_port->pport);
	FUNC1(rocker_port->rocker, PORT_PHYS_ENABLE, val);
}