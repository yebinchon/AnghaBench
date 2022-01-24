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
struct vmci_datagram {int dummy; } ;

/* Variables and functions */
 int VMCI_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  VMCI_INVALID_ID ; 
 int FUNC0 (int /*<<< orphan*/ ,struct vmci_datagram*,int) ; 

int FUNC1(struct vmci_datagram *msg)
{
	if (msg == NULL)
		return VMCI_ERROR_INVALID_ARGS;

	return FUNC0(VMCI_INVALID_ID, msg, false);
}