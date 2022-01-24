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
typedef  size_t u32 ;
struct vmci_handle_arr {size_t size; struct vmci_handle* entries; } ;
struct vmci_handle {int dummy; } ;

/* Variables and functions */
 struct vmci_handle VMCI_INVALID_HANDLE ; 
 scalar_t__ FUNC0 (int) ; 

struct vmci_handle
FUNC1(const struct vmci_handle_arr *array, u32 index)
{
	if (FUNC0(index >= array->size))
		return VMCI_INVALID_HANDLE;

	return array->entries[index];
}