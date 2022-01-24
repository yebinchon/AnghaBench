#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct map_info {int dummy; } ;
struct hyperbus_device {struct hyperbus_ctlr* ctlr; } ;
struct hyperbus_ctlr {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/ * x; } ;
typedef  TYPE_2__ map_word ;
struct TYPE_4__ {int /*<<< orphan*/  (* write16 ) (struct hyperbus_device*,unsigned long,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct hyperbus_device* FUNC0 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct hyperbus_device*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct map_info *map, map_word d,
			     unsigned long addr)
{
	struct hyperbus_device *hbdev = FUNC0(map);
	struct hyperbus_ctlr *ctlr = hbdev->ctlr;

	ctlr->ops->write16(hbdev, addr, d.x[0]);
}