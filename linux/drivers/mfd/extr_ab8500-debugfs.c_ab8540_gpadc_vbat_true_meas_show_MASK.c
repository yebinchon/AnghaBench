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
 int /*<<< orphan*/  VBAT_TRUE_MEAS ; 
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
	int vbat_true_meas_raw;
	int vbat_true_meas_convert;
	struct ab8500_gpadc *gpadc;

	gpadc = FUNC1("ab8500-gpadc.0");
	vbat_true_meas_raw = FUNC2(gpadc, VBAT_TRUE_MEAS,
		avg_sample, trig_edge, trig_timer, conv_type);
	vbat_true_meas_convert =
		FUNC0(gpadc, VBAT_TRUE_MEAS,
					   vbat_true_meas_raw);

	FUNC3(s, "%d,0x%X\n", vbat_true_meas_convert, vbat_true_meas_raw);

	return 0;
}