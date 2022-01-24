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
struct seq_file {int dummy; } ;
struct ab8500_gpadc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAT_CTRL ; 
 int FUNC0 (struct ab8500_gpadc*,int /*<<< orphan*/ ,int) ; 
 struct ab8500_gpadc* FUNC1 (char*) ; 
 int FUNC2 (struct ab8500_gpadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  avg_sample ; 
 int /*<<< orphan*/  conv_type ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,int) ; 
 int /*<<< orphan*/  trig_edge ; 
 int /*<<< orphan*/  trig_timer ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *p)
{
	int bat_ctrl_raw;
	int bat_ctrl_convert;
	struct ab8500_gpadc *gpadc;

	gpadc = FUNC1("ab8500-gpadc.0");
	bat_ctrl_raw = FUNC2(gpadc, BAT_CTRL,
		avg_sample, trig_edge, trig_timer, conv_type);
	bat_ctrl_convert = FUNC0(gpadc,
		BAT_CTRL, bat_ctrl_raw);

	FUNC3(s, "%d,0x%X\n", bat_ctrl_convert, bat_ctrl_raw);

	return 0;
}