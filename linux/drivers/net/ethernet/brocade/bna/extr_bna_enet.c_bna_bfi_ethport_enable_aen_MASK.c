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
struct bna_ethport {int /*<<< orphan*/  flags; } ;
struct bfi_msgq_mhdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNA_ETHPORT_F_PORT_ENABLED ; 
 int /*<<< orphan*/  ETHPORT_E_UP ; 
 int /*<<< orphan*/  FUNC0 (struct bna_ethport*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bna_ethport*) ; 

__attribute__((used)) static void
FUNC2(struct bna_ethport *ethport,
				struct bfi_msgq_mhdr *msghdr)
{
	ethport->flags |= BNA_ETHPORT_F_PORT_ENABLED;

	if (FUNC1(ethport))
		FUNC0(ethport, ETHPORT_E_UP);
}