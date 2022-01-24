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
struct vmci_resource {int dummy; } ;
struct vmci_datagram {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int VMCI_ERROR_NO_HANDLE ; 
 int /*<<< orphan*/  VMCI_RESOURCE_TYPE_DATAGRAM ; 
 struct vmci_resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_resource*) ; 
 int FUNC2 (struct vmci_datagram*) ; 

__attribute__((used)) static int FUNC3(struct vmci_datagram *dg)
{
	int retval;
	struct vmci_resource *resource;

	resource = FUNC0(dg->src,
					   VMCI_RESOURCE_TYPE_DATAGRAM);
	if (!resource)
		return VMCI_ERROR_NO_HANDLE;

	retval = FUNC2(dg);
	FUNC1(resource);
	return retval;
}