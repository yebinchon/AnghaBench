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
struct nicpf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NIC_PF_MAILBOX_INT ; 
 int /*<<< orphan*/  FUNC1 (struct nicpf*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nicpf *nic, int vf, int mbx_reg)
{
	FUNC1(nic, NIC_PF_MAILBOX_INT + (mbx_reg << 3), FUNC0(vf));
}