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
struct mt76x02_dfs_event {int /*<<< orphan*/  width; int /*<<< orphan*/  ts; int /*<<< orphan*/  engine; } ;
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct mt76x02_dev *dev,
				    struct mt76x02_dfs_event *event)
{
	u32 data;

	/* 1st: DFS_R37[31]: 0 (engine 0) - 1 (engine 2)
	 * 2nd: DFS_R37[21:0]: pulse time
	 * 3rd: DFS_R37[11:0]: pulse width
	 * 3rd: DFS_R37[25:16]: phase
	 * 4th: DFS_R37[12:0]: current pwr
	 * 4th: DFS_R37[21:16]: pwr stable counter
	 *
	 * 1st: DFS_R37[31:0] set to 0xffffffff means no event detected
	 */
	data = FUNC5(dev, FUNC0(DFS, 37));
	if (!FUNC1(data))
		return false;

	event->engine = FUNC2(data);
	data = FUNC5(dev, FUNC0(DFS, 37));
	event->ts = FUNC3(data);
	data = FUNC5(dev, FUNC0(DFS, 37));
	event->width = FUNC4(data);

	return true;
}