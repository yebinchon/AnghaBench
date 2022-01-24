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
struct pci_dev {int dummy; } ;
struct amd76xrom_window {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd76xrom_window*) ; 
 struct amd76xrom_window amd76xrom_window ; 

__attribute__((used)) static void FUNC1(struct pci_dev *pdev)
{
	struct amd76xrom_window *window = &amd76xrom_window;

	FUNC0(window);
}