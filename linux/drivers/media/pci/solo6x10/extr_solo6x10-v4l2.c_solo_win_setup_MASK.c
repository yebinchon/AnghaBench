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
typedef  scalar_t__ u8 ;
struct solo_dev {scalar_t__ nr_chans; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct solo_dev *solo_dev, u8 ch,
			   int sx, int sy, int ex, int ey, int scale)
{
	if (ch >= solo_dev->nr_chans)
		return;

	/* Here, we just keep window/channel the same */
	FUNC8(solo_dev, FUNC1(ch),
		       FUNC0(ch) |
		       FUNC6(sx) |
		       FUNC3(ex) |
		       FUNC5(scale));

	FUNC8(solo_dev, FUNC2(ch),
		       FUNC7(sy) |
		       FUNC4(ey));
}