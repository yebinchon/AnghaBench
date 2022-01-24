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
 int MT_WTBL1_W3_SKIP_TX ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct mt7603_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct mt7603_dev *dev, int idx, bool enabled)
{
	u32 addr = FUNC0(idx);
	u32 val = FUNC1(dev, addr + 3 * 4);

	val &= ~MT_WTBL1_W3_SKIP_TX;
	val |= enabled * MT_WTBL1_W3_SKIP_TX;

	FUNC2(dev, addr + 3 * 4, val);
}