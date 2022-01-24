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
struct TYPE_2__ {int /*<<< orphan*/  proto_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FIL ; 
 int /*<<< orphan*/  MAX_HEX_DUMP_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_if*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uint ; 

s32
FUNC7(struct brcmf_if *ifp, u32 cmd, void *data, u32 len)
{
	s32 err;

	FUNC5(&ifp->drvr->proto_block);

	FUNC1(FIL, "ifidx=%d, cmd=%d, len=%d\n", ifp->ifidx, cmd, len);
	FUNC2(FUNC0(), data,
			   FUNC4(uint, len, MAX_HEX_DUMP_LEN), "data\n");

	err = FUNC3(ifp, cmd, data, len, true);
	FUNC6(&ifp->drvr->proto_block);

	return err;
}