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
struct mvpp2_rfs_rule {int dummy; } ;
struct mvpp2_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mvpp2_port*,struct mvpp2_rfs_rule*) ; 

__attribute__((used)) static int FUNC1(struct mvpp2_port *port,
					 struct mvpp2_rfs_rule *rule)
{
	return FUNC0(port, rule);
}