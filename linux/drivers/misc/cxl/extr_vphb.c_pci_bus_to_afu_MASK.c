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
struct pci_controller {struct cxl_afu* private_data; } ;
struct pci_bus {int dummy; } ;
struct cxl_afu {int dummy; } ;

/* Variables and functions */
 struct pci_controller* FUNC0 (struct pci_bus*) ; 

__attribute__((used)) static inline struct cxl_afu *FUNC1(struct pci_bus *bus)
{
	struct pci_controller *phb = bus ? FUNC0(bus) : NULL;

	return phb ? phb->private_data : NULL;
}