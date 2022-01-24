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
struct pci_dev {int revision; } ;
struct hnae3_ae_dev {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNAE3_DEV_SUPPORT_FD_B ; 
 int /*<<< orphan*/  HNAE3_DEV_SUPPORT_GRO_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct pci_dev *pdev,
				    struct hnae3_ae_dev *ae_dev)
{
	if (pdev->revision >= 0x21) {
		FUNC0(ae_dev->flag, HNAE3_DEV_SUPPORT_FD_B, 1);
		FUNC0(ae_dev->flag, HNAE3_DEV_SUPPORT_GRO_B, 1);
	}
}