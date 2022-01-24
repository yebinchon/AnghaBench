#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct brcmf_if {TYPE_1__* drvr; int /*<<< orphan*/  ifidx; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  data_le ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  proto_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

s32
FUNC5(struct brcmf_if *ifp, u32 cmd, u32 data)
{
	s32 err;
	__le32 data_le = FUNC2(data);

	FUNC3(&ifp->drvr->proto_block);
	FUNC0(FIL, "ifidx=%d, cmd=%d, value=%d\n", ifp->ifidx, cmd, data);
	err = FUNC1(ifp, cmd, &data_le, sizeof(data_le), true);
	FUNC4(&ifp->drvr->proto_block);

	return err;
}