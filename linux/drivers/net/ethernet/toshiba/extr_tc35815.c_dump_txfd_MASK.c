#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  BDCtl; int /*<<< orphan*/  BuffData; } ;
struct TYPE_3__ {int /*<<< orphan*/  FDCtl; int /*<<< orphan*/  FDStat; int /*<<< orphan*/  FDSystem; int /*<<< orphan*/  FDNext; } ;
struct TxFD {TYPE_2__ bd; TYPE_1__ fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct TxFD *fd)
{
	FUNC1("TxFD(%p): %08x %08x %08x %08x\n", fd,
	       FUNC0(fd->fd.FDNext),
	       FUNC0(fd->fd.FDSystem),
	       FUNC0(fd->fd.FDStat),
	       FUNC0(fd->fd.FDCtl));
	FUNC1("BD: ");
	FUNC1(" %08x %08x",
	       FUNC0(fd->bd.BuffData),
	       FUNC0(fd->bd.BDCtl));
	FUNC1("\n");
}