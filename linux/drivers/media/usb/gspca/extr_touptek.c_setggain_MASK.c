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
typedef  int /*<<< orphan*/  u16 ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  REG_GREEN1_GAIN ; 
 int /*<<< orphan*/  REG_GREEN2_GAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev, u16 global_gain)
{
	u16 normalized;

	normalized = FUNC0(global_gain);
	FUNC1(gspca_dev, D_STREAM, "gain G1/G2 (0x%04X): 0x%04X (src 0x%04X)\n\n",
		  REG_GREEN1_GAIN,
		  normalized, global_gain);

	FUNC2(gspca_dev, normalized, REG_GREEN1_GAIN);
	FUNC2(gspca_dev, normalized, REG_GREEN2_GAIN);
}