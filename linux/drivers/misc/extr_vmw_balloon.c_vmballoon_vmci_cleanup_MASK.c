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
struct vmballoon {int /*<<< orphan*/  vmci_doorbell; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  VMCI_INVALID_ID ; 
 int /*<<< orphan*/  VMW_BALLOON_CMD_VMCI_DOORBELL_SET ; 
 int /*<<< orphan*/  FUNC0 (struct vmballoon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vmballoon *b)
{
	FUNC0(b, VMW_BALLOON_CMD_VMCI_DOORBELL_SET,
		      VMCI_INVALID_ID, VMCI_INVALID_ID);

	if (!FUNC2(b->vmci_doorbell)) {
		FUNC1(b->vmci_doorbell);
		b->vmci_doorbell = VMCI_INVALID_HANDLE;
	}
}