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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_WPDMA_DEBUG ; 
 int /*<<< orphan*/  MT_WPDMA_DEBUG_IDX ; 
 int MT_WPDMA_DEBUG_SEL ; 
 int /*<<< orphan*/  MT_WPDMA_DEBUG_VALUE ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC4(struct mt7603_dev *dev, u8 index)
{
	u32 val;

	FUNC3(dev, MT_WPDMA_DEBUG,
		FUNC1(MT_WPDMA_DEBUG_IDX, index) |
		MT_WPDMA_DEBUG_SEL);

	val = FUNC2(dev, MT_WPDMA_DEBUG);
	return FUNC0(MT_WPDMA_DEBUG_VALUE, val);
}