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
struct pppoe_addr {scalar_t__ sid; int /*<<< orphan*/  remote; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline int FUNC1(struct pppoe_addr *a, __be16 sid, char *addr)
{
	return a->sid == sid && FUNC0(a->remote, addr);
}