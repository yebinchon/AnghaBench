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
struct gspca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int __u8 ;
typedef  int /*<<< orphan*/  RGBG ;

/* Variables and functions */
 int /*<<< orphan*/  ET_G_RED ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, s32 val)
{
	__u8 RGBG[] = { 0x80, 0x80, 0x80, 0x80, 0x00, 0x00 };

	FUNC0(RGBG, val, sizeof(RGBG) - 2);
	FUNC1(gspca_dev, ET_G_RED, RGBG, 6);
}