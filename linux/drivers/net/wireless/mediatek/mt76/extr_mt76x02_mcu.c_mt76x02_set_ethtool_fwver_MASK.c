#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct mt76x02_fw_header {int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  build_ver; } ;
struct TYPE_5__ {TYPE_3__* hw; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct TYPE_6__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int,int,int,int) ; 

void FUNC2(struct mt76x02_dev *dev,
			       const struct mt76x02_fw_header *h)
{
	u16 bld = FUNC0(h->build_ver);
	u16 ver = FUNC0(h->fw_ver);

	FUNC1(dev->mt76.hw->wiphy->fw_version,
		 sizeof(dev->mt76.hw->wiphy->fw_version),
		 "%d.%d.%02d-b%x",
		 (ver >> 12) & 0xf, (ver >> 8) & 0xf, ver & 0xf, bld);
}