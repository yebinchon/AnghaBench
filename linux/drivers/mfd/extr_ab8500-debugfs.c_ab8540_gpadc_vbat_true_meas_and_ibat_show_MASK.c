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
 int /*<<< orphan*/  IBAT_VIRTUAL_CHANNEL ; 
 int /*<<< orphan*/  VBAT_TRUE_MEAS ; 
 int /*<<< orphan*/  VBAT_TRUE_MEAS_AND_IBAT ; 
 int FUNC0 (struct ab8500_gpadc*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ab8500_gpadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct ab8500_gpadc* FUNC2 (char*) ; 
 int /*<<< orphan*/  avg_sample ; 
 int /*<<< orphan*/  conv_type ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  trig_edge ; 
 int /*<<< orphan*/  trig_timer ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *p)
{
	int vbat_true_meas_raw;
	int vbat_true_meas_convert;
	int ibat_raw;
	int ibat_convert;
	struct ab8500_gpadc *gpadc;

	gpadc = FUNC2("ab8500-gpadc.0");
	vbat_true_meas_raw = FUNC1(gpadc,
			VBAT_TRUE_MEAS_AND_IBAT, avg_sample, trig_edge,
			trig_timer, conv_type, &ibat_raw);
	vbat_true_meas_convert = FUNC0(gpadc,
			VBAT_TRUE_MEAS, vbat_true_meas_raw);
	ibat_convert = FUNC0(gpadc, IBAT_VIRTUAL_CHANNEL,
		ibat_raw);

	FUNC3(s,
		   "%d,0x%X\n"
		   "%d,0x%X\n",
		   vbat_true_meas_convert, vbat_true_meas_raw,
		   ibat_convert, ibat_raw);

	return 0;
}