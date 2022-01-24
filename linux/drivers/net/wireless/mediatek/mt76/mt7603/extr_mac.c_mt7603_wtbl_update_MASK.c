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
typedef  int u32 ;
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_WTBL_UPDATE ; 
 int /*<<< orphan*/  MT_WTBL_UPDATE_BUSY ; 
 int /*<<< orphan*/  MT_WTBL_UPDATE_WLAN_IDX ; 
 int /*<<< orphan*/  FUNC1 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct mt7603_dev *dev, int idx, u32 mask)
{
	FUNC2(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_WLAN_IDX,
		 FUNC0(MT_WTBL_UPDATE_WLAN_IDX, idx) | mask);

	FUNC1(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_BUSY, 0, 5000);
}