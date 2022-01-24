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
typedef  int /*<<< orphan*/  u32 ;
struct venus_hfi_device {int dummy; } ;
struct venus_core {int dummy; } ;
struct hfi_sys_ping_pkt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi_sys_ping_pkt*,int /*<<< orphan*/ ) ; 
 struct venus_hfi_device* FUNC1 (struct venus_core*) ; 
 int FUNC2 (struct venus_hfi_device*,struct hfi_sys_ping_pkt*) ; 

__attribute__((used)) static int FUNC3(struct venus_core *core, u32 cookie)
{
	struct venus_hfi_device *hdev = FUNC1(core);
	struct hfi_sys_ping_pkt pkt;

	FUNC0(&pkt, cookie);

	return FUNC2(hdev, &pkt);
}