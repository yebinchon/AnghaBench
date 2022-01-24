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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {int speed; scalar_t__ duplex; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;

/* Variables and functions */
 int FUNC0 (struct hclge_dev*,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 

int FUNC2(struct hclge_dev *hdev, int speed, u8 duplex)
{
	int ret;

	duplex = FUNC1(duplex, speed);
	if (hdev->hw.mac.speed == speed && hdev->hw.mac.duplex == duplex)
		return 0;

	ret = FUNC0(hdev, speed, duplex);
	if (ret)
		return ret;

	hdev->hw.mac.speed = speed;
	hdev->hw.mac.duplex = duplex;

	return 0;
}